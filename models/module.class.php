<?php namespace models;

	/** 
	* @author  Kevin Newesil <newesil.kevin@gmail.com>
	* @version  1.0 
	* @package  default
	* 
	*/
	class Module
	{	
		/**
		 * Checks for what module is selected, and places a deprecated flag onto the row in the database
		 * @return boolean return true on successfull update.
		 */
		public function delete()
		{
			$rawUrl = explode('/index.php/',$_SERVER['REQUEST_URI']);
			$parts = explode('/',$rawUrl[1]);
			$id = $parts[2];

			if(\api\Api::updateTable('table_modules',array('deprecated'),array('1'),array('id' => $id)))
				return true;
			else
				return false;
		}
	}
