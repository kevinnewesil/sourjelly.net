<?php

	// Start a session as it's a new call 
	session_start();

	// Require the system files
	require_once('../config/const.config.php');
	require_once('../core/require.php');

	// Start up the system
	new \core\build\Sourjelly(true);

	$post = \Post();
	$ret = array();

	switch($post -> type)
	{
		default:
		case 'group':
			
			$tmp       = \Template('aframework/formElementSelect.html.tpl');
			$tmpOption = \Template('aframework/formElementSelectOption.html.tpl');
			$options   = '';

			foreach (\getApiCss() -> getAllGroups() as $groupKey => $groupData) {
				$options .= str_replace(array('{value}','{name}'),array($groupData['groupName'],$groupData['groupName']),$tmpOption);
			}

			$options .= str_replace(array('{value}','{name}'),array('unordered','Un-ordered properties'),$tmpOption);

			$ret[] = '<div class="propertyGroups">' .
					 (str_replace(array('{propertiesLoopName}','{optionsSettingsLoop}','{type}'),array('Group select',$options,$post -> type),$tmp)) .
					 '</div>';

			break;

		case 'property':
			die(var_dump($post));
			break;
	}

	die(json_encode($ret));