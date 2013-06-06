<?php namespace api\local; if(!defined("DS")) die('no direct script access!');

	/**
	 * @author  Kevin Newesil <newesil.kevin@gmail.com>
	 * @version  1.0
	 * @package  default
	 *
	 * The Api_modules class is only callable via the \api\Api class. This modules API class , is a local API class that makes calls to the modules table.
	 * This class is the only class that is allowed to access the modules table.
	 *
	 * @var $_link MySQLI resource The link to the database
	 */
	class Api_modules
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
		 * Return the data of ALL the non deprecated modules from the modules table... LOGICAL.
		 * @param  string 		$type 	The type in which the data should be returned (array, object, json etc) -> NOT WORKING YET.
		 * @return type=$type       	The data of all non depracted modules for further use.
		 */
		public function getAllModules($type = 'array')
		{
			$query = "SELECT `title`,`description`,`created_at`,`pages`,`position`,`active`,`id` FROM `table_modules` WHERE `deprecated` != '1'";
			$array  = array();

			if(!\api\Api::checkQuery($query))
					\core\access\Redirect::Home('Something went wrong with the query.');

			if($stmt = self::$_link->query($query))
			{
				if($stmt -> num_rows !== 0)
				{
					while($row = $stmt -> fetch_assoc())
						$array[] = $row;
				}

				$stmt -> close();
			}
			else
			{
				\SetNotice('Could not fetch active theme.. <br> error: ' . self::$_link -> error);
				return false;
			}
			
			return $array;
		}

		/**
		 * Get the info of a module by an module id
		 * @param  int 		$id 	The Id by which the module should be called.
		 * @return array     		The data of the module fetched from table_modules.
		 */
		public function getModuleById($id = NULL)
		{
			if($id === NULL)
			{
				$rawUrl = explode('/index.php/',$_SERVER['REQUEST_URI']);
				$parts = explode('/',$rawUrl[1]);

				if($parts[0] == 'modules' && is_numeric($parts[2]))
					$id = $parts[2];
				else
					\core\access\Redirect::Refresh("No ID to be found, can't find any module without an id can I ");
			}

			$query = "SELECT `title`,`description`,`created_at`,`pages`,`position`,`active`,`id` FROM `table_modules` WHERE `deprecated` != '1' AND `id` = '" . $id . "'";
			$array  = array();

			if(!\api\Api::checkQuery($query))
					\core\access\Redirect::Home('Something went wrong with the query.');

			if($stmt = self::$_link -> query($query))
			{
				if($stmt -> num_rows != 0){
					while($row = $stmt -> fetch_array())
						$array[] = $row;
				}

				$stmt -> close();
			}
			else
			{
				\SetNotice('Could not fetch module by id.. <br> error: ' . self::$_link -> error);
				return false;
			}

			return $array;
		}

		/**
		 * Get all deprecated modules, for gay fokes whom don't understand the basic principle of back ups
		 * @param  string 	$type 	The type in which the data should be returned (array, object, json etc) -> NOT WORKING YET.
		 * @return array       		The array with the data of all the deprecated modules.
		 */
		public function getAllDeprecatedModules($type = 'array')
		{
			$query = "SELECT `title`,`description`,`created_at`,`pages`,`position`,`active`,`id` FROM `table_modules` WHERE `deprecated` = '1'";
			$pageArray  = array();

			if($stmt = self::$_link->prepare($query))
			{	
				if(!\api\Api::checkQuery($query))
					\core\access\Redirect::Home('Something went wrong with the query.');

				$stmt -> execute();
				$stmt -> store_result();

				$stmt -> bind_result($title,$content,$created_at,$pages,$position,$active,$id);
				
				while($row = $stmt->fetch())
				{
					$pageArray[] = array($title,$content,$created_at,$pages,$position,$active,$id);
				}

				$stmt->close();
			}
			else
			{
				\SetNotice('Could not fetch module by deprecated flag.. <br> error: ' . self::$_link -> error);
				return false;
			}

			return $pageArray;
		}

		/**
		 * Gets the title and position of a module that is showable on a page. so the webview class can render the html of a module inside the html on a visitors page.
		 * @param  int 		$pageId The page Id that's connected to the modules, so that the module will only be called if the page ID matched the page ID's in the module table.
		 * @return array         	the data of the module so that the module class can render it, and give the rendered html to the webview class.
		 */
		public function getModuleByPageId($pageId)
		{
			$query = "SELECT `title`,`position` FROM `table_modules` WHERE";
			$i     = 0;
			$ret   = array();

			if(is_array($pageId))
			{
				foreach($pageId as $id)
				{
					if(count($pageId)-1 > $i)
					{
						$query .= "`pages` = '" . $id . "' AND ";
					}
					else
					{
						$query .= "`pages` = '" . $id . "' ";
					}
					$i++;
				}
			}
			else
			{
				$query .= "`pages` = '" . $pageId ."' ";
			}

			$query .= "AND `active` = '1' AND `deprecated` != '1'";
			
			if(!\api\Api::checkQuery($query))
					\core\access\Redirect::Home('Something went wrong with the query.');

			if($stmt = self::$_link->query($query))
			{
				while($row = $stmt->fetch_assoc())
				{
					$ret[$row['title']] = $row;
				}

				$stmt->close();

				return $ret;
			}
			else
			{
				\SetNotice('Could not fetch module by page id.. <br> error: ' . self::$_link -> error);
				return false;
			}

			return false;
		}
	}
