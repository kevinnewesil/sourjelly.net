<?php

	// Start a session as it's a new call 
	session_start();

	// Require the system files
	require_once('../config/const.config.php');
	require_once('../core/require.php');

	// Start up the system
	new \core\build\Sourjelly(true);

	$tmp       = \Template('aframework/formElementSelect.html.tpl');
	$tmpOption = \Template('aframework/formElementSelectOption.html.tpl');
	$options   = '';

	$post = \Post();
	$ret = array();

	switch($post -> type)
	{
		default:
		case 'group':

			foreach (\getApiCss() -> getAllGroups() as $groupKey => $groupData)
				$options .= str_replace(array('{value}','{name}'),array($groupData['id'],$groupData['groupName']),$tmpOption);

			$options .= str_replace(array('{value}','{name}'),array('unordered','Un-ordered properties'),$tmpOption);

			$ret[] = '<div class="propertyGroup">' .
					 str_replace(
					 	array('{propertiesLoopName}','{optionsSettingsLoop}','{selectId}','{type}'),
					 	array('Group select',$options,sha1(time()),$post -> type),
					 	$tmp
					 ) .
					 '</div>';

			break;

		case 'property':

			foreach(\getApiCss() -> getAllPropertiesByGroupId($post -> group) as $key => $value)
				$options .= str_replace(array('{value}','{name}'),array($value['pId'],$value['property']),$tmpOption);

			$ret[] = str_replace(array('{propertiesLoopName}','{optionsSettingsLoop}','{type}'),array('Property select',$options,$post -> type),$tmp);

			break;
	}

	die(json_encode($ret));