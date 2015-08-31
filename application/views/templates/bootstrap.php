<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><?php echo $title; ?></title>

    <!-- Latest compiled and minified Bootstrap CSS -->
    <link rel="stylesheet" href="/assets/css/bootstrap.min.css" />

    <link rel="stylesheet" href="/assets/css/normalize.css" />
    <link rel="stylesheet" href="/assets/css/main.css" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>

    <?php echo $body; ?>

    <script src="/assets/js/vendor/jquery-1.11.3.min.js"></script>
    <script src="/assets/js/vendor/modernizr-2.8.3.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="/assets/js/bootstrap.min.js"></script>

    <script src='/assets/js/plugins.js'></script>
    <script src='/assets/js/main.js'></script>
  </body>
</html>