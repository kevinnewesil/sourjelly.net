<?php

	// Start a session for keeping the system sessions alive!
	session_start();

	// Require the same things as the index, as it's a new call.
	require_once('../config/const.config.php');
	require_once('../core/build/Sourjelly.class.php');

	// Start the system
	new \core\build\Sourjelly(true);

	$data = \Post();
	$return = array();
	
	switch($data -> action)
	{
		case 'saveNavigationSettings':
			
			foreach($data -> data as $column => $value)
			{
				$columns[] = $column;
				$values[]  = $value;
			}

			$return[] = \Update('table_layout_navigation',$columns,$values,array('id' => 1),true);

			break;
	}

	echo json_encode($return);
	exit();