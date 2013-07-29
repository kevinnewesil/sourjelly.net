<?php namespace controllers; if(!defined("DS")) die('no direct script access!');

	/** 
	* @author  Kevin Newesil <kevin@sourjelly.net>
	* @version  1.0 
	* @package  Controllers
	* 
	*/
	final class AFrameworks extends \core\system\Controller
	{

		final public function __construct()
		{
			parent::__construct();
		}

		final public function index()
		{
			$tmp          = \Template('aframework/index.html.tpl');
			$groupTmp     = \Template('aframework/groupTab.html.tpl');
			$groupOptions = \Template('aframework/groupNameOptionsTab.html.tpl');

			$inputColour  = \Template('aframework/inputColour.html.tpl');
			$inputNumeric = \Template('aframework/inputNumeric.html.tpl');

			$selectBox    = \Template('aframework/selectSettings.html.tpl');
			$options      = \Template('aframework/propertieValueOptionsLoop.html.tpl');
			
			$tabOptions   = '';
			$tabValues	  = '';

			foreach(\getApiCss() -> getAllGroups() as $key => $group)
			{
				$tabOptions .= str_replace(array('{groupName}'),array($group['groupName']),$groupOptions);

				foreach(\getApiCss() -> getAllPropertiesByGroupId($group['id']) as $property)
				{
					
					$values = NULL;
					$valueOptions = '';
					$select = false;

					if($property['vIds'] != "")
					{
						$valueArray = explode(',', $property['vIds']);

						foreach($valueArray as $valueId)
						{
							$value = \getApiCss() -> getValueByValueId($valueId);
							
							switch ($value['type']) {
								case '0':
									
									break;
								
								# Select box and option
								case '1':
								default:
									$valueOptions .= str_replace(array('{value}','{name}'),array($valueId,$value['value']),$options);
									$select = true;
									break;

								# Numeric input
								case '2':
									$tabValues .= $inputNumeric;
									break;

								# Colour input
								case '3':
									$tabValues .= $inputColour;
									break;

								# 
								case '4':

									break;

								#
								case '5':

									break;

								#
								case '6':

									break;

								#
								case '7':

									break;

								#
								case '8':

									break;

								#
								case '9':

									break;

								#
								case '10':

									break;

							}
							
						}
					}

					if($select)
						$tabValues .= str_replace(
							array('{groupName}','{propertiesLoopName}','{optionsSettingsLoop}'),
							array($group['groupName'],$property['property'],$valueOptions),
							$selectBox
						);
				}
			}

			foreach (\getApiCss() -> getAllPropertiesWithoutGroup() as $noGroupProperty) {
				
					
					$values = array();

					if($noGroupProperty['vIds'] != "")
					{
						$valueArray = explode(',', $noGroupProperty['vIds']);

						foreach($valueArray as $valueId)
						{
							$values[] = \getApiCss() -> getValueByValueId($valueId);
						}
					}
					
			}

			$selectBox = str_replace(array('{groupTabOptions}','{propertyValueOptions}'),array($tabOptions,$tabValues),$groupTmp);
			\sjHtml() -> assign('{content}',str_replace('{properties}',$selectBox,$tmp));
		}

		
	}
