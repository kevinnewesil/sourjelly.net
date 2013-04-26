<?php namespace core\database;
	
	/**
	 * @todo Write pdo option
	 */
	class DatabaseBase
	{
		/**
		 * Creates a database for the system if the database does not exist yet.
		 * @param  string $name the name of the database
		 */
		public function createDatabase($name)
		{
			$link = \core\build\Sourjelly::getConfig('_link');

			$link->query("CREATE DATABASE IF NOT EXISTS " . $name);

		}
		
		/**
		 * Creates a table for in the database via the migration class.
		 * @param string $name the name of the table in the database
		 * @param array $rows the names of the rows as keys, and the types as values.
		 */
		public function CreateTable($name,$rows)
		{
			$query = "CREATE TABLE IF NOT EXISTS `" . $name . "` (id int NOT NULL AUTO_INCREMENT, PRIMARY KEY(id),";
			$i = 0;
			
			if(is_array($rows))
				foreach($rows as $row => $type)
				{
					switch ($type) {
						case 'string':
							$query .= $row . " varchar(255) ";
							break;
						case 'text':
							$query .= $row . " longtext ";
							break;
						case 'int':
							$query .= $row . " int(8) ";
							break;
						case 'timestamp':
							$query .= $row . " timestamp ";
							break;
						case 'datetime':
							$query .= $row . " datetime ";
							break;
						case 'date':
							$query .= $row . " date ";
							break;
						case 'blob':
							$query .= $row . " blob ";
							break;
					}

					$i < count($rows)-1 ? $query .= " , " : '';
					$i++;
				}
			else
				$query .= $rows;

			$query .= ")";
			
			$link = \core\build\Sourjelly::getConfig('link');

			if($stmt = $link->prepare($query))
			{
				if(!$stmt->execute())
				$stmt->close();
			}
		}

		/**
		 * Deletes a table from the database.
		 */
		public function DropTable($name)
		{
			\core\build\Sourjelly::getConfig('link')->query("DROP TABLE IF EXISTS `"  . $name . "`");
		}
	}
