<?php namespace api\local; if(!defined("DS")) die('no direct script access!');

	class Api_css
	{

		protected $_link;

		/**
		 * Sets the link to the database from the Main \api\Api class into this smaller api class.
		 * @param MySQLI resource $link The link to the database
		 */
		public function __construct($link)
		{
			$this -> _link = $link;
		}

		public function getAllGroups()
		{
			$res = false;
			$query = "SELECT `id`,`groupName` FROM `table_Aframework_css_property_groups`";

			if($stmt = $this -> _link -> query($query))
			{
				while($row = $stmt -> fetch_assoc())
				{
					$res[] = $row;
				}

				$stmt -> close();
			}

			return $res;
		}

		public function getAllProperties()
		{
			$res = false;
			$query = "SELECT table_Aframework_css_properties.`id` as pId,
							 table_Aframework_css_properties.`vId` as vIds,
							 table_Aframework_css_properties.`property`,
							 table_Aframework_css_property_groups.`groupName`
					  FROM `table_Aframework_css_properties`
					  INNER JOIN `table_Aframework_css_property_groups`
					  ON `table_Aframework_css_properties`.`gId` = `table_Aframework_css_property_groups`.`id`; ";

			if($stmt = $this -> _link -> query($query))
			{
				while($row = $stmt -> fetch_assoc())
				{
					$res[] = $row;
				}

				$stmt -> close();
			}

			return $res;
		}

		public function getAllPropertiesByGroupId($gId)
		{
			$res = false;
			$query = "SELECT table_Aframework_css_properties.`id` as pId,
							 table_Aframework_css_properties.`vId` as vIds,
							 table_Aframework_css_properties.`property`,
							 table_Aframework_css_property_groups.`groupName`
					  FROM `table_Aframework_css_properties`
					  INNER JOIN `table_Aframework_css_property_groups`
					  ON `table_Aframework_css_properties`.`gId` = `table_Aframework_css_property_groups`.`id`
					  WHERE `gId` = ?; ";

			if($stmt = $this -> _link -> prepare($query))
			{
				$stmt -> bind_param("i"	,$gId);
				$stmt -> execute();
				$result = $stmt -> get_result();

				while($row = $result -> fetch_assoc())
					$res[] = $row;

				$stmt -> close();
			}

			return $res;
		}

		public function getAllPropertiesWithoutGroup()
		{
			$res = false;
			$query = "SELECT table_Aframework_css_properties.`id` as pId,
							 table_Aframework_css_properties.`vId` as vIds,
							 table_Aframework_css_properties.`property`
					  FROM `table_Aframework_css_properties`
					  WHERE `gId` = 0; ";

			if($stmt = $this -> _link -> query($query))
			{
				while($row = $stmt -> fetch_assoc())
				{
					$res[] = $row;
				}

				$stmt -> close();
			}

			return $res;
		}

		public function getValueByValueId($vId)
		{
			$res = false;
			$query = "SELECT `value`,`type` FROM `table_Aframework_css_values` WHERE `id` = ?";

				if($stmt = $this -> _link -> prepare($query))
				{
					$stmt -> bind_param("i",$vId);
					$stmt -> execute();
					$result = $stmt -> get_result();

					$i = 0;

					while($row = $result -> fetch_assoc())
					{
						$res[$i]['value'] = $row['value'];
						$res[$i]['type']  = $row['type'];
						++$i;
					}

					$stmt -> close();
				}
				else
					die($this -> _link -> error);

				return $res[0];
		}

		/**
		 * @todo  fix this shit
		 */
		public function getAllValuesByPropertyId($pId)
		{
			$res = false;

			$query = "SELECT `vId`
					  FROM `table_Aframework_css_properties`
					  WHERE `id` = ?;";

			if($stmt = $this -> _link -> prepare($query))
			{
				$stmt -> bind_param("i",$pId);
				$stmt -> execute();
				$result = $stmt -> get_result();

				while($row = $result -> fetch_assoc())
					$values = $row;

				$stmt -> close();
			}
			else
				die($this -> _link -> error);

			$vIds = explode(',', $values['vId']);

			$query = "SELECT `id`,`value`,`type` FROM `table_Aframework_css_values` WHERE `id` = ?";

			foreach($vIds as $vId)
			{
				if($stmt = $this -> _link -> prepare($query))
				{
					$stmt -> bind_param("i",$vId);
					$stmt -> execute();
					$result = $stmt -> get_result();

					while($row = $result -> fetch_assoc())
						$res[] = $row;

					$stmt -> close();
				}
			}

			return $res;
		}

		public function getAllClasses()
		{
			$res = false;

			if($stmt = $this -> _link -> query("SELECT `id`,`vId`,`class`,`sId`,`pId`,`gId` FROM `table_Aframework_css"))
			{
				$stmt -> bind_result($id,$vId,$class,$sId,$pId,$gId);

				while($row = $stmt -> fetch())
					$res[] = $row;

				$stmt -> close();
			}

			return $res;
		}

		/**
		 * @todo :
		 */
		private function matchPropertyValue($class = "", $classId = 0)
		{

		}

		private function matchPropertyGroup($class = "", $classId = 0)
		{
			
		}
	}