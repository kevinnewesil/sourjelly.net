<?php
	// Start a session for keeping the system sessions alive!
	session_start();

	// Require the same things as the index, as it's a new call.
	require_once('../config/const.config.php');
	require_once('../core/build/Sourjelly.class.php');

	// Start the system
	new \core\build\Sourjelly(true);

	$data = \Post();

	foreach($data -> menuArr as $position => $title)
		\api\Api::updateTable( 'table_content_properties', array('menuOrder'), array($position+1), array('title' => $title));

	return true;