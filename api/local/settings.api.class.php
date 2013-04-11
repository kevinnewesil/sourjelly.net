<?php namespace api\local; if(!defined("DS")) die('no direct script access!');
	
	/**
	 * @author  Kevin Newesil <newesil.kevin@gmail.com>
	 * @version  1.0 
	 * @package  default
	 * 
	 * The Api_settings class is only callable via the \api\Api class. This settings API class , is a local API class that makes calls to the settings table.
	 * This class is the only class that is allowed to access the settings table.
	 * 
	 * @var $_link MySQLI resource The link to the database
	 */
	class Api_settings
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
		 * Gets all the user's custom system settings and preferences. for (re)setting the system's ini settings.
		 * @return array As I wrote this query, it will NEVER go wrong, therefor this always returns an array with the settings data.
		 */
		public function getSystemSettings()
		{
			$query = "SELECT * FROM `table_settings`";

			if(!\api\Api::checkQuery($query))
					\core\access\Redirect::Home('Something went wrong with the query.');

			if($stmt = \core\build\Sourjelly::getConfig('link')->query($query))
			{
				$result = $stmt->fetch_assoc();
				return $result;
			}
		}
	}
