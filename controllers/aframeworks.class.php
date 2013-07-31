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
                        $tmp              = \Template('aframework/index.html.tpl');

                        $groupTmp         = \Template('aframework/groupTab.html.tpl');
                        $groupOptions     = \Template('aframework/groupNameOptionsTab.html.tpl');

                        $formElement      = \Template('aframework/formControl.html.tpl');
                       
                        $inputColour      = \Template('aframework/inputColour.html.tpl');
                        $inputNumeric     = \Template('aframework/inputNumeric.html.tpl');
                       
                        $selectBoxHtml    = \Template('aframework/formElementSelect.html.tpl');
                        $optionsHtml      = \Template('aframework/formElementSelectOption.html.tpl');
                       
                        $groupTabOptions  = '';
                        $formElements     = '';

                        foreach (\getApiCss() -> getAllGroups() as $groupKey => $groupData) {
                        	
                        	$groupTabOptions .= str_replace('{groupName}', $groupData['groupName'], $groupOptions);

                        	foreach (\getApiCss() -> getAllPropertiesByGroupId($groupData['id']) as $propertyKey => $propertyValue) {
                        		$values  = explode(',',$propertyValue['vIds']);
                        		$select  = false;
                        		$options = '';
								$inputs  = '';

                        		foreach($values as $valueId)
                        		{
                        			$valueProperties = \getApiCss() -> getValueByValueId($valueId);

                        			switch ($valueProperties['type']) {
                        				case '1':
                        					$options .= str_replace(array('{value}','{name}'), array($valueProperties['value'],$valueProperties['value']), $optionsHtml);
                        					$select  = true;
                        					break;
                        				
                        				case '2':
                        					$inputs .= $inputNumeric;
                        					break;
                        				
                        				case '3':
                        					$inputs .= $inputColour;
                        					break;

                        				default:
                        					# code...
                        					break;
                        			}
                        		}

                        		if($select === true)
                        		{
                        			$inputs .= str_replace('{optionsSettingsLoop}', $options, $selectBoxHtml);
                        		}

                        		$formElements .= str_replace(array('{propertiesLoopName}','{formElement}'), array($propertyValue['property'],$inputs), $formElement);
                        	}
                        }

                        $groupTmp = str_replace(array('{groupTabOptions}','{propertyValueOptions}'), array($groupTabOptions,$formElements), $groupTmp);

                        $tmp = str_replace('{properties}',$groupTmp,$tmp);

                        \sjHtml() -> assign('{content}',$tmp);
                }
 
               
        }