<?php
	
	// Start a session as it's a new call 
	session_start();

	// Require the system files
	require_once('../config/const.config.php');
	require_once('../core/require.php');

	// Start up the system
	new \core\build\Sourjelly(true);

	// Predefine the return as an Array and set 'dev' standart to false
	$return = array('dev' => 'false');
	$data   = \Post();

	// Switch the action the system is checking for
	switch($data -> action)
	{
		// Check if the user is a developer, if so, set the dev return value to true
		case 'checkDev':
			$userInfo = \api\Api::getUsers() -> getUserBySession();

			if($userInfo['dev'] === 1)
				$return['dev'] = 'true';
			break;

		// Ajax shit.
		// check if there aren't any harmfull injections being posted. if not, update settings directly.
		case 'saveInput':

			if($data -> name !== 'lang')
				if(!strpos($data -> value, 'script'))
					if(\api\Api::updateTable('table_settings',array($data -> name),array($data -> value), array('id' => '1'),true))
						$return['update'] = true;
					else
						$return['update'] = false;
				else
					$return['update'] = false;
			else if($data -> name == 'lang')
				if(\api\Api::updateTable('table_users',array('lang'),array($data -> value),array("CONCAT(firstname , ' ' , lastname)" => $_SESSION['login']),true))
					$return['update'] = true;
				else
					$return['update'] = false;
			else
				$return['update'] = false;
			break;

		case 'checkLogin':
			die(var_dump('checklogin'));
			break;
	}

	// Return a json of the return array for Javascript messages on success/failure.
	echo json_encode($return);
