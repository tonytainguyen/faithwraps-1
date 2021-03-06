<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Users extends CI_Controller {


	public function __construct() 
	{
		parent::__construct();

		$this->output->enable_profiler();
	}

	/**
	 * Loads default view: user registration/login
	 */
	public function login()
	{
		$this->template->load('bootstrap', 'users/login', array(
			'title' => 'Login/Registration'
		));
	}

	/**
	* Destroys the session then redirects the user to the default controller
	*/
	public function logout() {
		$this->session->sess_destroy();
		redirect('/');
	}

	/**
	 * Displays the forgot password page to request an email
	 */
	function forgot_password()
	{
		$this->template->load('bootstrap', 'users/forgot_password', array(
			'title' => 'Forgot Password'
		));
	}

	/**
	 * Endpoint for registration form.
	 */
	public function register()
	{
		if ($this->form_validation->run('register'))
		{
			if ($user_id = $this->User->create_user($this->input->post()))
			{
				if ($email_sent = $this->User->send_verification_email($user_id))
					$feedback = "Verification email sent. Please check your inbox";
				else
					$feedback = "Error: Email could not be sent to that address";
			}
			else // Error during user creation
			{
				$feedback = 'Error: User could not be created';
			}
		}
		else 
		{
			$feedback = validation_errors();
		}
		$this->session->set_flashdata('login_feedback', $feedback);

		redirect('/users/login');
	}

	/**
	 * Endpoint for user login form for local accounts
	 */
	public function user_login()
	{
		if ($this->form_validation->run('login'))
		{
			if ($user = $this->User->verify_login($this->input->post()))
			{

				$this->session->set_userdata('is_logged_in', 1);
				$this->session->set_userdata('user', array(
					'id' => $user['id'],
					'first_name' => ucfirst($user['first_name']),
					'last_name' => ucfirst($user['last_name']),
					'email' => $user['email'],
					'level' => $user['level']
				));
				
				// Combine session cart with users cart table
				if ($this->session->userdata('cart')) {
					$this->Cart->combine_carts();
				}

				if ($target_page = $this->session->userdata('target_page')) {
					if ($target_page == "shipping") {
						redirect('/shipping');
					}
				} else {
					redirect('/');
				}
			}
			else
			{
				$login_feedback = 'Error: User with that email/password combination could not be found, or account has not been activated yet.';
			}
		}
		else 
		{
			$login_feedback = validation_errors();
		}

		$this->session->set_flashdata('login_feedback', $login_feedback);

		redirect('/users/login');
	}

	/**
	 * Endpoint for forgot password feature
	 */
	function request_reset()
	{
		if ($this->form_validation->run('password_reset'))
		{
			$email = $this->input->post('email');

			if ($user = $this->User->fetch(array('email' => $email)))
			{
				$this->User->send_reset_email($user);
			}

			$this->session->set_flashdata('login_feedback', "A password reset email was sent to $email. The link is valid for an hour");
			redirect('/users/login');
		}
		else
		{
			$this->session->set_flashdata('reset_feedback', validation_errors());
		}

		redirect('/users/forgot_password');
	}

	/**
	 * Endpoint for resetting password
	 */
	function reset_password()
	{
		if ($this->form_validation->run('reset_password'))
		{
			if( $this->User->reset_password($this->input->post()) )
				$feedback = 'Your password was successfully updated. Please log in';
			else
				$feedback = 'Invalid or expired token. Please try again';
		}
		else
		{
			$feedback = validation_errors();
		}

		$this->session->set_flashdata('login_feedback', $feedback);

		redirect('/users/login');
	}

	/**
	 * Displays the password reset form.
	 * If not token is availabe in the url, redirects to login page
	 */
	function password_reset($token)
	{
		if (! $token || $token == '')
		{
			$this->session->set_flashdata('login_feedback', "Invalid reset token");
			redirect('users/');
		}

		$this->template->load('bootstrap', 'users/password_reset', array(
			'title' => 'Reset Password',
			'token' => $token
		));
	}

	/**
	 * Endpoint for email account verification
	 */
	public function confirm($code)
	{
		if ($this->User->confirm($code))
		{
			if ($activated = $this->User->activate($code))
				$feedback = 'Account was succesfully activated. Please log in.';
			else
				$feedback = 'Error: invalid or missing token';
		}
		else
		{
			$feedback = 'Error: Confirmation code was not found';
		}

		$this->session->set_flashdata('login_feedback', $feedback);

		redirect('/users/login');
	}

}