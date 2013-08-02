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

			$ret[] = str_replace(
				array('{propertiesLoopName}','{optionsSettingsLoop}','{selectId}','{type}'),
				array('Property select',$options,sha1(time()),$post -> type),
				$tmp
			);

			break;

		case 'value':

            $inputColour      = \Template('aframework/inputColour.html.tpl');
            $inputNumeric     = \Template('aframework/inputNumeric.html.tpl');

            $inputNormal      = \Template('aframework/inputNormal.html.tpl');
           
            $selectBoxHtml    = \Template('aframework/formElementSelect.html.tpl');
            $optionsHtml      = \Template('aframework/formElementSelectOption.html.tpl');
            $inputs 		  = '';

			foreach(\getApiCss() -> getAllValuesByPropertyId($post -> property) as $key => $value)
				switch ($value['type']) {
					case '1':
						//select options
						$options .= str_replace(
							array('{value}','{name}'),
							array(
								$value['id'],
								$value['value'],

							),
							$optionsHtml
						);

						$select  = true;
						break;
					
					case '2':
						//numeric
						$inputs .= $inputNumeric;
						break;
					
					case '3':
						//rgba
						$inputs .= $inputColour;
						break;

					case '4':
						//cubic bezier
						$inputs .= '';
						break;

					case '5':
						//url
						$inputs .= $inputNormal;
						break;

					case '6':
						//attr
						$inputs .= '';
						break;

					case '7':
						//float float
						$inputs .= $inputNumeric;
						$inputs .= $inputNumeric;
						break;

					case '8':
						//float
						$inputs .= $inputNumeric;
						break;

					case '9':
						//float float float
						$inputs .= $inputNumeric;
						$inputs .= $inputNumeric;
						$inputs .= $inputNumeric;
						break;

					case '10':
						//float float float float
						$inputs .= $inputNumeric;
						$inputs .= $inputNumeric;
						$inputs .= $inputNumeric;
						$inputs .= $inputNumeric;
						break;

					default:
						# code...
						break;
				}

				if($select === true)
        		{
        			$inputs .= str_replace(array('{optionsSettingsLoop}','{propertiesLoopName}'), array($options,'Value select'), $selectBoxHtml);
        		}

			$ret[] = $inputs;

			break;
	}

	die(json_encode($ret));