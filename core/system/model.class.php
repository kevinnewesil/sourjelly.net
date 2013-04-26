<?php namespace core\system; if(!defined("DS")) die('no direct script access!');
	
	/**
	 * @author  Kevin Newesil <newesil.kevin@gmail.com>
	 * @version  1.0
	 * 
	 * @param $_table the name of the table that belongs to the model.
	 */
	class Model
	{
		protected $_table;

		protected static $_post;
		protected static $_get;

		/**
		 * Gets the name of the model, cleans it, and uses the the name, to render the table.
		 */
		public function __construct()
		{
			$model_child_name = explode('\\',get_class($this));
			$this -> _table   = 'table_' . strtolower($model_child_name[count($model_child_name)-1]) . 's';

			$this -> _post    = \Post();
			$this -> _get     = \Get();
		}

		/**
		 * Creates a select query with the rows given.
		 * @param  array $rows the name of the rows that are requested.
		 * @return string  the query.
		 */
		private function createQuery($rows)
		{
			if(!is_array($rows))
				\core\access\Redirect::Home('Wrong values parsed to the __unique model function, $rows Must be an array','error');

			//predefine.
			$select = "SELECT ";
			$where  = " WHERE ";
			
			$values = array_values($rows);
			$rows   = array_keys($rows);

			for ($i=0; $i < count($rows); $i++) { 
				if(count($rows)-1 > $i)
					$select .= " `" . $rows[$i] . "` , ";
				else
					$select .= " `" . $rows[$i] . "` ";

				if(count($rows)-1 > $i)
					$where .= " `" . $rows[$i] . "` = '" . $values[$i] . "' AND ";
				else
					$where .= " `" . $rows[$i] . "` = '" . $values[$i] . "' ";
			}
			
			return $select . " FROM `" . $this -> _table . "` " .$where;

		}

		/**
		 * Checks if a row already exists in the table.
		 * @param  array $rows the names of the rows that should be unique.
		 * @return boolean     return true if there are no values in the rows with the value that the user wants to parse.
		 */
		protected function __unique($rows)
		{
			$query = $this -> createQuery($rows);
			$qdata = \api\Api::selectRow($query);

			if($qdata['num_rows'] > 0)
				return false;
			else
				return true;
		}

		/**
		 * validates a request so the user can login.
		 * @param  array $rows  [the rows that should be called]
		 * @param  string $salt [the salt that should be parsed and checked with the password.]
		 * @return boolean      [Returns true if there's a row found that belongs to the request.]
		 */
		protected function __validates($rows, $salt = NULL)
		{
			if($salt !== NULL)
			{
				$saltString = '';

				foreach($salt as $value)
				{
					if(array_key_exists($value, $_POST))
						$saltString .= $_POST[$value];
					else
						$saltString .= $value;
				}

				$saltString = sha1($saltString);

				$arraykeys = array_keys($rows);
				$rows[$arraykeys[0]] = $saltString;
			}

			$query = $this -> createQuery($rows);
			$qdata = \api\Api::selectRow($query);
			
			if($qdata['num_rows'] === 1)
				return true;
			else
				return false;
		}
	}
