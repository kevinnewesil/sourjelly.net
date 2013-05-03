<?php

	// Start a session as it's a new call 
	session_start();

	// Require the system files
	require_once('../config/const.config.php');
	require_once('../core/build/Sourjelly.class.php');

	// Start up the system
	new \core\build\Sourjelly(true);

	$return  = array();
	$imgpath = $_SERVER['DOCUMENT_ROOT'] . ASSETS_PATH . 'img/uploads/';
	$post 	 = \Post();


	switch($post -> action ){
		case 'loadQuick':

			foreach(new DirectoryIterator($imgpath) as $file)
				if($file != '.' && $file != '..' && $file != '.DS_Store')
					$return[] = $file -> getFilename();

			break;

		case 'removeImg':
			
			if(unlink($_SERVER['DOCUMENT_ROOT'] . DS . $post -> filepath ))
				$return[] = true;
			else
				$return[] = false;

			break;

		default:
			$return[] = false;
			break;
	}

	die(json_encode($return));