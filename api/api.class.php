<?php namespace api;

	/**
	 * @author  Kevin Newesil <newesil.kevin@gmail.com>
	 * @version  1.0 
	 * @package  default
	 * @var _link 		MySQLI 	Resource The link to the database.
	 * @var _pages 		object 	Object that leads tot he local api class \api\local\Api_pages
	 * @var _modules 	object 	Object that leads tot he local api class \api\local\Api_modules
	 * @var _users 		object 	Object that leads tot he local api class \api\local\Api_users
	 * @var _settings	object 	Object that leads tot he local api class \api\local\Api_settings
	 * @var _themes 	object 	Object that leads tot he local api class \api\local\Api_themes
	 */
	class Api
	{
		protected static $_link;

		protected static $_pages;
		protected static $_modules;
		protected static $_users;
		protected static $_settings;
		protected static $_themes;

		protected static $_insertId;

		/**
		 * The API constructor functions gets all the local sub API's and set protected static properties in the API class
		 * Theses protected properties have the objects of the local sub API classes.
		 * The link is send along with every sub API class, and is set as local property in the sub API classes via their constructors
		 */
		public function __construct()
		{
			require(API_PATH . 'local/pages.api.class.php');
			require(API_PATH . 'local/modules.api.class.php');
			require(API_PATH . 'local/users.api.class.php');
			require(API_PATH . 'local/settings.api.class.php');
			require(API_PATH . 'local/themes.api.class.php');

			self::$_link     = \core\build\Sourjelly::getConfig('link');
			
			self::$_pages    = new \api\local\Api_pages(self::$_link);
			self::$_modules  = new \api\local\Api_modules(self::$_link);
			self::$_users    = new \api\local\Api_users(self::$_link);
			self::$_settings = new \api\local\Api_settings(self::$_link);
			self::$_themes   = new \api\local\Api_themes(self::$_link);
		}

		/**
		 * The getters of the properties.
		 * @return return the object of the called local API class.
		 */
		public static function getPages()
		{
			return self::$_pages;
		}

		public static function getModules()
		{
			return self::$_modules;
		}

		public static function getUsers()
		{
			return self::$_users;
		}

		public static function getSettings()
		{
			return self::$_settings;
		}

		public static function getThemes()
		{
			return self::$_themes;
		}

		/**
		 * This function gets all non deprecated menu items, and returns a (2D) array with the titles of the items.
		 * @return array 	$return 	A 2D array with the titles of the menu Items as keys, and a 2nd array with submenu items as keys etc.
		 * @see getChildrenRecursive 
		 */
		public static function getMenuItems()
		{
			$return = array();
			$query  = "SELECT table_content_properties.id,table_content_properties.title 
					   FROM `table_content_properties`
					   LEFT JOIN `table_content` ON table_content.id = table_content_properties.cId 
					   WHERE table_content_properties.hasParent = 0 
					   	AND table_content.deprecated = 0 
					   	AND table_content.menuVisibility = 1 
					   ORDER BY table_content_properties.menuOrder ASC";

			if($stmt = self::$_link->prepare($query))
			{
				if(!self::checkQuery($query))
					\core\access\Redirect::Home('Something went wrong with the query.');

				$stmt->execute();
				$stmt->bind_result($id,$title);
				while($stmt->fetch())
				{
					$return[$title] = $id;
				}

				$stmt->close();
			}
			else
				die(self::$_link -> error);
			
			foreach($return as $title => $id)
			{
				$return[$title] = self::getChildrenRecursive($id);
			}

			return $return;
		}

		/**
		 * This function gets the submenu items that belong to a menu item, works via item ID 
		 * @see  getMenuItems
		 * @param  int $menuId The ID of the menu item the getChildrenRecursive function is called for.
		 * @return array 	$return 	A 2D array with the titles as keys and an array as value for getting deeper levels.
		 */
		public static function getChildrenRecursive($menuId){

			if(!isset($return))
				$return = array();

			$query = "SELECT table_content_properties.title,table_content_properties.id 
					  FROM `table_content_properties`
					  LEFT JOIN `table_content` ON table_content.id = table_content_properties.cId 
					  WHERE table_content_properties.hasParent = 1
					  	AND table_content_properties.parentId = ? 
					  	AND table_content.deprecated = 0 
					  ORDER BY table_content_properties.menuOrder ASC";

			if($stmtChildren = self::$_link->prepare($query))
			{
				if(!self::checkQuery($query))
					\core\access\Redirect::Home('Something went wrong with the query.');
				
				$stmtChildren->bind_param('i',$menuId);
				$stmtChildren->execute();
				$stmtChildren->bind_result($title,$id);

				// Bugs caused by not closing bloody stmt..
				while($stmtChildren->fetch())
				{
					$return[$title] = array();
					// $return[$title] = self::getChildrenRecursive($id);
				}

				$stmtChildren->close();
			}
			else
				die(self::$_link->error);

			return $return;
		}

		/**
		 * This function selects a row from a table and determines if the row already has a value in it. for Unique results in models.
		 * @param  string 	$query 	The query in which the value and the row are that should be unique.
		 * @return array    $ret 	An array with the values, numbers of rows with the value, and the number of fields checked.
		 * @note For each field_count should be a maximum of 1 num_rows -> meaning it's unique.
		 */
		public static function selectRow($query)
		{
			$return = array();
			
			if(!self::checkQuery($query))
					\core\access\Redirect::Home('Something went wrong with the query.');

			if($stmt = self::$_link->query($query))
			{
				$ret['num_rows'] = $stmt->num_rows;
				$ret['field_count'] = $stmt->field_count;
				$stmt->close();

				return $ret;
			}
			else
				\core\access\redirect::Home(self::$_link->error,'error');
		}

		/**
		 * This function dynamically creates an MySQLI insert query, for inserting data into a table.
		 * @param  string 	$table  	The name of the table the rows should be inserted to.
		 * @param  array 	$columns 	An array with the names of the columns.
		 * @param  array 	$values 	An array with the values for the colums, the values should be in the order of the columns the should be inserted to.
		 * @param  string 	$types  	A string with the types of all values.
		 * @return boolean  			Returns true when affected rows is bigger than 0.
		 * @example 					\api\Api::insert_into('table_name',array('column1','column2'),array('valueForColumn1','valueForColumn2'),'si');
		 */
		public static function insertInto($table,$columns,$values,$types,$debug = false) 
		{

			$query = "INSERT INTO `" . $table . "` (";

			for($i = 0 ; $i < count($columns); $i++) {
				if($i < count($columns)-1)
					$query .= " `" . $columns[$i] . "` ,";
				else
					$query .= " `" . $columns[$i] . "` ";
			}

			$query .= ") VALUES (";

			for ($i=0; $i < count($values); $i++)
			{

				if($i < (count($values)-1))
					$query .= '?,';
				else
					$query .= '?';
			}

			$query .= ")";

			if($stmt = self::$_link->prepare($query))
			{
				if(!self::checkQuery($query,'INSERT',true))
					\core\access\Redirect::Home('Something went wrong with the query.');
					
				if($types && $values)
		        {
		            $bind_names[] = $types;
		            for ($i=0; $i<count($values);$i++) 
		            {
						$bind_name    = 'bind' . $i;
						$$bind_name   = $values[$i];
						$bind_names[] = &$$bind_name;
		            }
		            $return = call_user_func_array(array($stmt,'bind_param'),$bind_names);
		        }

		        $stmt->execute();
				
		        if($debug)
		        	die($stmt->error);

		        if($stmt->affected_rows > 0 )
		        {
		        	self::$_insertId = $stmt -> insert_id;
		        	$stmt -> close();
		        	return true;
		        }
		        else
		        { 
		        	self::$_insertId = false;
		        	$stmt -> close();
		        	return false;
		        }
			}
			else
				\core\access\Redirect::Home(self::$_link->error . 'in \api\Api::insetInto()','error');
		}

		/**
		 * Creates a dynamic update query in MySQL on the fly.
		 * @param  string $table  	the name of the table that should get an updated row.
		 * @param  array  $columns 	the names of the columns that should be updated
		 * @param  array  $values 	the names of the values in the columns that should be updated. should be in the same order as @var $columns
		 * @param  array  $where  	An array with the keys as column(s) and values as value(s) of the rows that should be updated.
		 * @return boolean         	Retrun true if affected rows is more than 0.
		 * @example 				\api\Api::updateTable('table_name',array('column1','column2'),array('newvalue1','newvalue2'),array('id' => 'idThatNeedsUpdate'));
		 */
		public static function updateTable($table,$columns,$values,$where,$ajax = false)
		{
			if(!$ajax && !is_array($columns) || !is_array($values) || !is_array($where))
				\core\access\Redirect::home('missing array for function updateTable in class api\Api.');

			$values = array_values($values);

			$query = "UPDATE `" . $table . "` SET ";

			for ($i=0; $i < count($columns); $i++) { 
				if(count($columns)-1 > $i)
					$query .= "`" . $columns[$i] . "` = '" . mysqli_real_escape_string(self::$_link,$values[$i]) ."', ";
				else
					$query .= "`" . $columns[$i] . "` = '" . mysqli_real_escape_string(self::$_link,$values[$i]) ."' "; 
			}

			$j = 0;

			foreach($where as $column => $value)
			{

				if(count($where)-1 > $j)
					if(strpos($column,'CONCAT') !== false)
						$query .= " WHERE " . $column . " = '" . $value . "' AND ";
					else
						$query .= " WHERE `" . $column . "` = '" . $value . "' AND ";
				else
					if(strpos($column,'CONCAT') !== false)
						$query .= " WHERE " . $column . " = '" . $value . "'";
					else
						$query .= " WHERE `" . $column . "` = '" . $value . "'";

				$j++;  
			}
			
			if($stmt = self::$_link->prepare($query))
			{
				if(!self::checkQuery($query,'UPDATE'))
					\core\access\Redirect::Home('Something went wrong with the query.');
				
				$stmt->execute();
				if($stmt->affected_rows > 0 )
				{
					$stmt->close();
					return true;
				}
				else
				{
					$stmt->close();
					return false;
				}
			}
			else
				return false;
		}

		public static function getLastInsertId()
		{
			return self::$_insertId;
		}

		/**
		 * 
		 */
		public static function checkQuery($query, $sort = 'SELECT', $timestamps = false)
		{
			if(strpos($query, $sort) === false)
				return false;

			switch ($sort) {
				case 'SELECT':
					if(!$timestamps)
						if(strpos('UPDATE', $query) || strpos('INSERT', $query) || strpos('DELETE', $query))
							return false;
					else
						if(strpos('INSERT', $query) || strpos('DELETE', $query))
							return false;
					break;
				
				case 'UPDATE':
					if(strpos('SELECT', $query) || strpos('INSERT', $query) || strpos('DELETE', $query))
						return false;
					break;
				
				case 'INSERT':
					if(!$timestamps)
						if(strpos('SELECT', $query) || strpos('UPDATE', $query) || strpos('DELETE', $query))
							return false;
					else
						if(strpos('SELECT', $query) || strpos('DELETE', $query))
							return false;
					break;
				
				case 'DELETE':
					return false;
					break;
				
				default:
					return false;
					break;
			}

			return true;
		}
	}
