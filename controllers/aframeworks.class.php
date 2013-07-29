<?php namespace controllers; if(!defined("DS")) die('no direct script access!');

	/** 
	* @author  {YOUR_NAME} <{YOUR_EMAIL}>
	* @version  1.0 
	* @package  {PACKAGE}
	* 
	* @var {PROPERTIE_NAME} {PROPERTY_TYPE} {PROPERTY_DESCRIPTION}
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
			$groupTmp     = \Template('aframework/groupSettings.html.tpl');
			$groupOptions = \Template('aframework/optionsSettingsLoop.html.tpl');
			$selecBox     = '';

			foreach(\getApiCss() -> getAllGroups() as $key => $group)
			{
				#do shit met groups
				# $group['id'] == group id
				# $group['groupName'] = group name
				# Dit volgende geld alleen voor properties die onder een groep vallen hierna volg een loop voor properties zonder group

				foreach(\getApiCss() -> getAllPropertiesByGroupId($group['id']) as $property)
				{
					# do shit met je properties
					# $property['pId'] id van je property
					# $property['vId'] comma geschijden lijst van je values
					# $property['property'] naam van de property
					# $property['groupname'] Groep waar property onder valt als niet null is anders geen groep
						
					
					$values = NULL;

					if($property['vIds'] != "")
					{
						$valueArray = explode(',', $property['vIds']);

						foreach($valueArray as $valueId)
						{
							$values[] = \getApiCss() -> getValueByValueId($valueId);
						}
					}

					// $values = array met alle values die bij de property kunnen. success!
					// echo('<pre>Group name: ' . $group['groupName'] . '<br>property id: ' . $property['pId'] . '<br>property name: ' . $property['property'] . '<br>'); var_dump($values); echo ('</pre>');
					
				}

				$selectBox .= str_replace(array('{propertiesLoopName}','{selectSettingsLoop}'),array($group['groupName'],$valueOptions),$groupTmp);

			}

			foreach (\getApiCss() -> getAllPropertiesWithoutGroup() as $noGroupProperty) {
				# do shit met je properties
					# $property['pId'] id van je property
					# $property['vId'] comma geschijden lijst van je values
					# $property['property'] naam van de property
					# $property['groupname'] Groep waar property onder valt als niet null is anders geen groep
					
					$values = array();

					if($noGroupProperty['vIds'] != "")
					{
						$valueArray = explode(',', $noGroupProperty['vIds']);

						foreach($valueArray as $valueId)
						{
							$values[] = \getApiCss() -> getValueByValueId($valueId);
						}
					}

					// $values = array met alle values die bij de property kunnen. success!
					echo('<pre>property id: ' . $property['pId'] . '<br>property name: ' . $property['property'] . '<br>'); var_dump($values); echo ('</pre>');
					
			}

			\sjHtml() -> assign('{content}',str_replace('{properties}',$selectBox,$tmp));
		}

		
	}
