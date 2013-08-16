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

	if(!isset($_SESSION['count']))
		$_SESSION['count'] = array('group' => 0, 'property' => 0 ,'value' => 0);

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
					 	array('{propertiesLoopName}','{optionsSettingsLoop}','{selectId}','{type}','{name}'),
					 	array('Group select',$options,sha1(time()),$post -> type, 'group[' . $_SESSION['count']['group'] . ']'),
					 	$tmp
					 ) .
					 '</div>';

			$_SESSION['count']['group']++;

			break;

		case 'property':

			if($post -> group == 'unordered')
				$properties = \getApiCss() -> getAllPropertiesWithoutGroup();
			else
				$properties = \getApiCss() -> getAllPropertiesByGroupId($post -> group);

			foreach($properties as $key => $value)
				$options .= str_replace(array('{value}','{name}'),array($value['pId'],$value['property']),$tmpOption);

			$ret[] = str_replace(
				array('{propertiesLoopName}','{optionsSettingsLoop}','{selectId}','{type}','{name}'),
				array('Property select',$options,sha1(time()),$post -> type, 'property[' . $post -> group .'][' . $_SESSION['count']['property'] . ']'),
				$tmp
			);

			$_SESSION['count']['property']++;

			break;

		case 'value':

            $formControl      = \Template('aframework/formControl.html.tpl');
            $inputColour      = \Template('aframework/inputColour.html.tpl');
            $inputNumeric     = \Template('aframework/inputNumeric.html.tpl');

            $inputNormal      = \Template('aframework/inputNormal.html.tpl');
           
            $selectBoxHtml    = \Template('aframework/formElementSelectValue.html.tpl');
            $optionsHtml      = \Template('aframework/formElementSelectOption.html.tpl');
            $inputs 		  = '';

			foreach(\getApiCss() -> getAllValuesByPropertyId($post -> property) as $key => $value)
			{
				switch ($value['type']) {
					case '1':
						//select options
						$options .= str_replace(
							array('{value}','{name}'),
							array(
								$value['value'],
								$value['value'],

							),
							$tmpOption
						);

						$select  = true;
						break;
					
					case '2':
						//numeric
						$inputs .= $inputNumeric;
						$_SESSION['count']['value']++;

						// $inputs .= str_replace(
						// 	array(),
						// 	array(),	
						// 	$inputNumeric;
						// );
						break;
					
					case '3':
						//rgba
						$inputs .= $inputColour;
						$_SESSION['count']['value']++;
						break;

					case '4':
						//cubic bezier
						$inputs .= '';
						$_SESSION['count']['value']++;
						break;

					case '5':
						//url
						$inputs .= $inputNormal;
						$_SESSION['count']['value']++;
						break;

					case '6':
						//attr
						$inputs .= '';
						$_SESSION['count']['value']++;
						break;

					case '7':
						//float float
						$inputs .= $inputNumeric;
						$_SESSION['count']['value']++;
						$inputs .= $inputNumeric;
						$_SESSION['count']['value']++;
						break;

					case '8':
						//float
						$inputs .= $inputNumeric;
						$_SESSION['count']['value']++;
						break;

					case '9':
						//float float float
						$inputs .= $inputNumeric;
						$_SESSION['count']['value']++;
						$inputs .= $inputNumeric;
						$_SESSION['count']['value']++;
						$inputs .= $inputNumeric;
						$_SESSION['count']['value']++;
						break;

					case '10':
						//float float float float
						$inputs .= $inputNumeric;
						$_SESSION['count']['value']++;
						$inputs .= $inputNumeric;
						$_SESSION['count']['value']++;
						$inputs .= $inputNumeric;
						$_SESSION['count']['value']++;
						$inputs .= $inputNumeric;
						$_SESSION['count']['value']++;
						break;

					default:
						# code...
						break;
				}
			}

				if($select === true)
        		{
        			$inputs .= str_replace(
        				array('{optionsSettingsLoop}','{name}'),
        				array($options, 'value[' . $post -> group . '][' . $post -> property . '][' . $_SESSION['count']['value'] . ']'),
        				$selectBoxHtml
        			);

        			$_SESSION['count']['value']++;
        		}

			$ret[] = str_replace(array('{propertiesLoopName}','{formElement}','{type}'),array('Value select',$inputs,'value'),$formControl);

			break;
	}

	die(json_encode($ret));