<?php

	// Start a session as it's a new call 
	session_start();

	// Require the system files
	require_once('../config/const.config.php');
	require_once('../core/require.php');

	// Start up the system
	new \core\build\Sourjelly(true);

	//Collect the post data
	$data = \Post();
	$return = false;

	switch($data -> medium)
	{
		case 'facebook':
			
			$fb = new \api\SjFacebook;

			if(!$fb -> connect())
			{
				$return = "Either you are allready connected or the connection data is wrong";
			}
			else
			{
				$return = "Facebook connection made successfully";
			}

			break;

		case 'google' :

			break;

		default:
			return false;
			break;
	}

	return json_encode($return);