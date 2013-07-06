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

	switch($data -> medium)
	{
		case 'facebook':

			break;

		case 'google' :

			

			break;

		default:
			return false;
			break;
	}