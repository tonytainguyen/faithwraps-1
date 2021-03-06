<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Google_Auth extends CI_Controller 
{

	function __construct()
	{
		parent::__construct();
		$this->load->library('google_oauth');
		$this->load->model('Google');
		// $this->output->enable_profiler();
	}

	function authenticate()
	{
		if ($access_token = $this->session->userdata('gauth_token'))
		{
			$this->google_oauth->client->setAccessToken($access_token);
			$auth = new Google_Service_Oauth2( $this->google_oauth->client );
			
			$user = $auth->userinfo_v2_me->get();
			
			// If user's information already exists in DB, grab it. If not, create it
			if (! $account_info = $this->Google->fetch( array('oauth_id' => $user['id'])))
				$new_user_id = $this->Google->create_account($user);

			if($account_info) // Existing db info
			{
				$session_data = array(
					'first_name' => $account_info['first_name'],
					'last_name' => $account_info['last_name'],
					'email' => $account_info['email']
				);
			}
			else // New info
			{
				$session_data = array(
					'first_name' => $user['givenName'],
					'last_name' => $user['family_name'],
					'email' => $user['email']
				);
			}

			$this->session->set_userdata('is_logged_in', 1);
			$this->session->set_userdata('user', $session_data);

			redirect('/'); // TO DO: redirect to their last page

		}
		else
		{
			redirect('/Google_Auth/oauth2_callback');
		}
	}

	function oauth2_callback()
	{
		if (! empty($_GET['error']))
		{
			//Do something with error here
			exit('Error: ' . $_GET['error']);
		}
		else if (! isset($_GET['code']))
		{		

			$state = $this->Google->generate_state();
			$this->session->set_userdata('g_auth_state', $state);
			$this->google_oauth->client->setState($state);	

			$auth_url = filter_var($this->google_oauth->client->createAuthUrl(), FILTER_SANITIZE_URL);

			redirect($auth_url);
		}
		else if (!$this->session->userdata('g_auth_state') || ($_GET['state'] !== $this->session->userdata('g_auth_state'))) 
		{
		    // State is invalid, possible CSRF attack in progress
		    $this->session->unset_userdata('g_auth_state');
		    exit('Invalid state');
		} 
		else
		{
			$this->google_oauth->client->authenticate($_GET['code']);
			
			if ($access_token = $this->google_oauth->client->getAccessToken())
			{
				$this->session->set_userdata('gauth_token', $access_token);
				redirect('/Google_Auth/authenticate');
			}
		}
	}
}