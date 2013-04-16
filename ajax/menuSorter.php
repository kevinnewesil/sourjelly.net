<?php
	// Start a session for keeping the system sessions alive!
	session_start();

	// Require the same things as the index, as it's a new call.
	require_once('../config/const.config.php');
	require_once('../core/build/Sourjelly.class.php');

	// Start the system
	new \core\build\Sourjelly(true);

	// Check what if poted, and if the menu's are set, currently 1 nested level is available in the menu sorter.
	if(isset($_POST['menuArr']) && !empty($_POST['menuArr']) && isset($_POST['submenuArr']) && !empty($_POST['submenuArr']))
		$menuArr = array_merge($_POST['menuArr'],$_POST['submenuArr']);
	elseif(isset($_POST['menuArr']) && !empty($_POST['menuArr']))
		$menuArr = $_POST['menuArr'];
	elseif(isset($_POST['submenuArr']) && !empty($_POST['submenuArr']))
		$menuArr = $_POST['submenuArr'];
	else
		return false;

	// Check if the menu array is set, and update every value of the menu order in the table.
	if(isset($menuArr))
	{
		foreach($menuArr as $position => $title)
		{
			\api\Api::updateTable(
				'table_content',
				array('menu_order'),
				array($position+1),
				array('title' => $title)
			);
		}

		return true;
	}
