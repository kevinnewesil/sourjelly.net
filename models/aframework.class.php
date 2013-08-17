<?php namespace models; if(!defined("DS")) die('no direct script access!');

	/** 
	* @author  Kevin Newesil <kevin@sourjelly.net>
	* @version  1.0 
	* @package  Models
	*/
	final class AFramework extends \core\system\Model
	{

		final public function __construct() { parent::__construct(); }

		final public function create()
		{

			$inserted = array();
			$query = "INSERT INTO `table_Aframework_css_class_rows` VALUES(NULL,(SELECT `property` FROM `table_Aframework_css_properties` WHERE `id` = ?),?)";

			foreach($this -> _post -> value as $valuesTop)
			{
				foreach($valuesTop as $propertyId => $values)
				{
					foreach($values as  $value)
					{
						if($stmt = $this -> _link -> prepare($query))
						{
							$stmt -> bind_param('is',$propertyId,$value);
							$stmt -> execute();

							$inserted[] = $this -> _link -> insert_id;

							$stmt -> close();
						}
						else
							die($this -> _link -> error);
					}
				}
			}

			if($stmt = $this -> _link -> prepare("INSERT INTO `table_Aframework_css_class` (`id`,`class`,`desc`,`rowId`,`created_at`) VALUES(NULL,?,?,?,?)"))
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
					die($this -> _link -> error);
					$stmt -> close();
					return false;
				}
			}
			else
				die($this -> _link -> error);

			return false;
		}
	}
