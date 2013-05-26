<?php
	
	// Start a new session as it's a new system call.
	session_start();

	// Require the system files.
	require_once('../config/const.config.php');
	require_once('../core/require.php');

	// Start the system
	new \core\build\Sourjelly(true);

	// Predefine the return value
	$return = array();

	$data = \Post();

	// Switch the action the user wants to preform on the modules
	switch($data -> action)
	{
		// User wants to activate a module, if not actived modules will not load -> saves render time.
		case 'activate' :
			$id = explode('_', $data -> id );
			$current = $data -> current == 'Yes' ? 0 : 1;

			if(\api\Api::updateTable('table_modules',array('active'), array($current) ,array('id' => $id[1]),true))
				$return['value'] = 'true';
			else
				$return['value'] = 'false';
			break;

		// Remove the deprecated flag from the pending module in the database
		case 'undelete' :
		
			$id = explode('_', $data -> id );

			if(\api\Api::updateTable('table_modules',array('deprecated'), array('0') ,array('id' => $id[1]),true))
				$return['value'] = 'true';
			else
				$return['value'] = 'false';
			break;
	}

	// Return a json of the return array for usage in Javascript for success / failure error message.
	echo json_encode($return);
