<?php namespace core;
	
	//-----------------------------------------------------------------------------------------------------------------
	// Require config files && Database connection file for automatic usage via server or terminal.
	//-----------------------------------------------------------------------------------------------------------------
	
	if(!class_exists('\\core\\build\\Sourjelly'))
	{
		
		error_reporting(-1);
		
        require_once('config/const.config.php');
        
        require_once(ABSTRACTS_PATH . 'sourjelly.abstract.php');
        require_once(INTERFACE_PATH . 'sourjelly.interface.php');
        
		require_once(BUILD_PATH . 'sourjelly.class.php');
		
		new \core\build\Sourjelly;
		
	}

	//-----------------------------------------------------------------------------------------------------------------
	//Call for Migrate class... And excecute if needed.
	//-----------------------------------------------------------------------------------------------------------------

	function autoMigrate()
	{
		if (PHP_SAPI !== 'cli')
			require_once('../database/migrate.class.php');
		else
			require_once('database/migrate.class.php');

		new \database\Migrate;

		return true;
	}

	function databaseBackup()
	{

		$link = \core\build\Sourjelly::getConfig('link');

		$tables = array();
		$stmt = $link->query("SHOW TABLES");
		while($row = $stmt->fetch_assoc())
		{
			foreach($row as $value)
			{
				$tables[] = $value;
			}
		}
		$stmt->close();

		$return = '';

		foreach($tables as $table)
		{
			$return .= "DROP TABLE .'" . $table . "';";

			$stmt = $link->query("SHOW CREATE TABLE " . $table);
			$rows = $stmt->fetch_row();
			$return .= "\n\n" . $rows[1] . ";\n\n";
			$stmt->close();
			
			$stmt = $link->query("SELECT * FROM " . $table);
			$num_fields = count($stmt->fetch_fields());

			for($i = 0; $i < $num_fields; $i++)
			{
				while($row = $stmt->fetch_row())
				{
					$return .= " INSERT INTO '" . $table ."' VALUES (";

					for($j = 0; $j < $num_fields; $j++)
					{
						$row[$j] = addslashes($row[$j]);
						$row[$j] = str_replace("\n","\\n",$row[$j]);

						if (isset($row[$j])) { $return.= '"'.$row[$j].'"' ; } else { $return.= '""'; }
         				if ($j<($num_fields-1)) { $return.= ','; }
					}
					$return .= ");\n";
				}
			}
			$return .= "\n\n\n";
		}

		$now = time();

		if (PHP_SAPI !== 'cli')
			$handle = fopen('../tmp/backup/db-backup-'.$now.'.sql','w+');
		else
			$handle = fopen('tmp/backup/db-backup-'.$now.'.sql','w+');

		fwrite($handle,$return);
		fclose($handle);

		if (PHP_SAPI !== 'cli')
			if(file_exists('../tmp/backup/db-backup-'.$now.'.sql'))
				return true;
			else 
				return false;
		else
			if(file_exists('tmp/backup/db-backup-'.$now.'.sql'))
				return true;
			else 
				return false;
	}
