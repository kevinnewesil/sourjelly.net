<?php namespace models; if(!defined("DS")) die('no direct script access!');

	/** 
	* @author  {YOUR_NAME} <{YOUR_EMAIL}>
	* @version  1.0 
	* @package  {PACKAGE}
	* 
	* @var {PROPERTIE_NAME} {PROPERTY_TYPE} {PROPERTY_DESCRIPTION}
	*/
	final class AFramework extends \core\system\Model
	{

		final public function __construct() { parent::__construct(); }

		final public function create()
		{

			$link = \SjConfig() -> getLink();

			$inserted = array();
			$query = "INSERT INTO `table_Aframework_css_class_rows` VALUES(NULL,(SELECT `property` FROM `table_Aframework_css_properties` WHERE `id` = ?),?)";

			foreach($this -> _post -> value as $valuesTop)
			{
				foreach($valuesTop as $propertyId => $values)
				{
					foreach($values as  $value)
					{
						if($stmt = $link -> prepare($query))
						{
							$stmt -> bind_param('is',$propertyId,$value);
							$stmt -> execute();

							$inserted[] = $link -> insert_id;

							$stmt -> close();
						}
						else
							die($link -> error);
					}
				}
			}

			if($stmt = $link -> prepare("INSERT INTO `table_Aframework_css_class` VALUES(NULL,?,?,?,?)"))
			{
				$ids = implode(',', $inserted);
				$date = date('Y-m-d H:i:s');
				$className = $this -> _post -> className;
				
				$desc = 'desc';

				$stmt -> bind_param('ssss',$className, $desc ,$ids,$date);
				$stmt -> execute();

				if($stmt -> affected_rows == 1)
				{
					$stmt -> close();
					return true;
				}
				else
				{
					$stmt -> close();
					return false;
				}
			}

			return false;
		}
	}
