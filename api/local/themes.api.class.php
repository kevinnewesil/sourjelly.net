<?php namespace api\local; if(!defined("DS")) die('no direct script access!');

	/**
	 * @author  Kevin Newesil <newesil.kevin@gmail.com>
	 * @version  1.0 
	 * @package  default
	 * 
	 * The Api_themes class is only callable via the \api\Api class. This themes API class , is a local API class that makes calls to the themes table.
	 * This class is the only class that is allowed to access the themes table.
	 * 
	 * @var $_link MySQLI resource The link to the database
	 */
	class Api_themes
	{
		protected static $_link;

		/**
		 * Sets the link to the database from the Main \api\Api class into this smaller api class.
		 * @param MySQLI resource $link The link to the database
		 */
		public function __construct($link)
		{
			self::$_link = $link;
		}

		/**
		 * Get's the current active theme name from the themes table.
		 * @return boolean/array Returns an array with the Theme data on succesful execution of the query, else return false.
		 */
		public function getActiveTheme()
		{
			$ret = '';
			
			$query = "SELECT `themeName` FROM table_themes WHERE `active` = 1 AND `deprecated` = 0";

			if(!\api\Api::checkQuery($query))
					\core\access\Redirect::Home('Something went wrong with the query.');

			if($stmt = self::$_link->query($query))
			{
				$ret = $stmt->fetch_assoc();
				$stmt -> close();
			}
			else
				$ret = false;

			return $ret;
		}

		/**
		 * Get theme names, activity and Id from the themes table. GETS ALL OF THEM. GO GO GET EM.
		 * @return boolean/array Returns an array with the Theme data on succesful execution of the query, else return false.
		 */
		public function getThemeNamesAndActivity()
		{
			$ret = '';
			
			$query = "SELECT `themeName` , `active` ,`id` FROM `table_themes` WHERE `deprecated` = 0";

			if(!\api\Api::checkQuery($query))
					\core\access\Redirect::Home('Something went wrong with the query.');

			if($stmt = self::$_link->query($query))
			{
				while($row = $stmt -> fetch_assoc())
					$ret[] = $row;

				$stmt -> close();
			}
			else
				$ret = false;

			return $ret;
		}

		/**
		 * GETS ALL THE DAMN DATA FROM THE THEMES TABLE WHERE THE ID IS THE REQUESTED ID. SOUNDS LIKE FUN.
		 * @param  int 		$id 	 The id of the theme the data is being fetched for.
		 * @return boolean/array     Returns an array with the Theme data on succesful execution of the query, else return false.
		 */
		public function getThemeById($id)
		{
			$ret = '';
			
			$query = "SELECT * FROM `table_themes` WHERE `id` = '" . $id . "' AND `deprecated` = 0";

			if(!\api\Api::checkQuery($query))
					\core\access\Redirect::Home('Something went wrong with the query.');

			if($stmt = self::$_link->query($query))
			{
				$ret = $stmt -> fetch_assoc();
			}
			else
				$ret = false;

			return $ret;
		}
	}	
