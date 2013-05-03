<?php namespace api\local\layout; if(!defined("DS")) die('no direct script access');

	/**
	* 
	*/
	class Api_Layout_Navigation
	{
		protected static $_link;

		function __construct($link)
		{
			self::$_link = $link;
		}

		public function getLayoutSettings()
		{
			(bool)   $res   = false;
			(string) $query = "SELECT * FROM `table_layout_navigation";

			if($stmt = self::$_link -> query($query))
				if($stmt -> num_rows > 0)
					while($row = $stmt -> fetch_assoc())
						$res[] = $row;
				else
					\SetNotice('No layout settings found..');
			else
				\SetNotice('Something went wrong with the query..' . self::$_link -> error);

			(isset($stmt) && $stmt !== NULL) ? $stmt -> close() : NULL;

			return $res;
		}

		public function getPrimaryLayoutSettings()
		{
			(bool)   $res   = false;
			(string) $query = "SELECT * FROM `table_layout_navigation` WHERE `id` = 1";

			if($stmt = self::$_link -> query($query))
				if($stmt -> num_rows > 0)
					while($row = $stmt -> fetch_assoc())
						$res = $row;
				else
					\SetNotice('no layout settings found..');
			else
				\SetNotice('something went wrong with the query..' . self::$_link -> error);

			(isset($stmt) && $stmt !== NULL) ? $stmt -> close() : NULL;

			return $res;
		}

		public function getLayoutSettingsById($id = 1)
		{
			(bool)   $res   = false;
			(string) $query = "SELECT * FROM `table_layout_navigation` WHERE `id` = ?";

			if($stmt = self::$_link -> prepare($query))
				if($stmt -> bind_param('i',$id))
					if($stmt -> execute())
						if($stmt -> use_result())
							if($stmt -> num_rows > 0)
								while($row = $stmt -> fetch_array())
									$res = $row;
							else
								\SetNotice('No settings with this ID found.' . self::$_link -> error);
						else
							\SetNotice('Could not use database result' . self::$_link -> error);
					else
						\SetNotice('Could not execute prepared stmt' . self::$_link -> error);
				else
					\SetNotice('Could not bind parameters to stmt' . self::$_link -> error);
			else
				\SetNotice('Could not prepare query' . self::$_link -> error);

			(isset($stmt) && $stmt !== NULL ) ? $stmt -> close() : NULL;
			return $res;

		}
	}