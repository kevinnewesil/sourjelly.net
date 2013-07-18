<?php namespace core;

	if(!function_exists('setErrorReporting'))
	{
		function setLogFile()
		{
			ini_set('error_log', TMP_PATH . 'logs' . DS . 'error.log');
		}
	}

	if(!function_exists('stripSlashesDeep'))
	{
		function stripSlashesDeep($value)
		{
			return is_array($value) ? array_map('\core\stripSlashesDeep',$value) : stripslashes($value);
		}
	}

	if(!function_exists('removeMagicQoutes'))
	{
		function removeMagicQoutes()
		{
			if(get_magic_quotes_gpc())
			{
				$_GET	 = stripSlashesDeep($_GET);
				$_POST	 = stripSlashesDeep($_POST);
				$_COOKIE = stripSlashesDeep($_COOKIE);
			}
		}
	}

	if(!function_exists('unregisterGlobals'))
	{
		function unregisterGlobals()
		{
			if(ini_get('register_globals'))
			{
				$globalArray = array('_GET','_POST','_COOKIE','_SESSION','_REQUEST','_SERVER','_ENV','_FILES');
				foreach($globalArray as $global)
				{
					foreach($GLOBALS[$global] as $key => $var)
					{
						if($var === $GLOBALS[$global])
						{
							unset($GLOBALS[$global]);
						}
					}
				}
			}
		}
	}

	if(!function_exists('setTimezone'))
	{
		function setTimezone($timezone = NULL)
		{
			//without this rule the error message about timezone appears
			date_default_timezone_set('UTC');
			$timezone = ($timezone === NULL) ? date_default_timezone_get() : $timezone;
			date_default_timezone_set($timezone);
		}
	}

	if(!function_exists('dd'))
	{
		function dd($value,$dumpLenght = '-1')
		{
			ini_set('xdebug.var_display_max_children', $dumpLenght);

			echo '<pre>';
			var_dump($value);
			echo '</pre>';
		}
	}

	//--------------------------------------------------------------------------------------------------------------------||
	// Render colours into display
	//--------------------------------------------------------------------------------------------------------------------||

	if(!function_exists('colourString')){
	// Function that parses string and return string with right colour values;
		function colourString($string, $foregroundColour = NULL, $backgroundColour = NULL)
		{
			//--------------------------------------------------------------------------------------------------------------------||
			// Predefine array with ansi colour settings.
			//--------------------------------------------------------------------------------------------------------------------||

			$foregroundColours = array(
				'black'        => '0;30',
				'dark_gray'    => '1;30',
				'blue'         => '0;34',
				'light_blue'   => '1;34',
				'green'        => '0;32',
				'light_green'  => '1;32',
				'cyan'         => '0;36',
				'light_cyan'   => '1;36',
				'red'          => '0;31',
				'light_red'    => '1;31',
				'purple'       => '0;35',
				'light_purple' => '1;35',
				'brown'        => '0;33',
				'yellow'       => '1;33',
				'light_gray'   => '0;37',
				'white'        => '1;37',
			);

			$backgroundColours = array(
				'black'      => '40',
				'red'        => '41',
				'green'      => '42',
				'yellow'     => '43',
				'blue'       => '44',
				'magenta'    => '45',
				'cyan'       => '46',
				'light_gray' => '47',
			);

			$colored_string = "";

			// Check if given foreground color found
			if (isset($foregroundColours[$foregroundColour])) {
				$colored_string .= "\033[" . $foregroundColours[$foregroundColour] . "m";
			}

			// Check if given background color found
			if (isset($backgroundColours[$backgroundColour])) {
				$colored_string .= "\033[" . $backgroundColours[$backgroundColour] . "m";
			}

			// Add string and end coloring
			$colored_string .=  $string . "\033[0m";

			return $colored_string;
		}
	}
	
	class helpers{
		
		public static function getPageTitleFromPageId($pageId = NULL)
		{
			
			$url = explode('/',$_SERVER['REQUEST_URI']);
			
			if($pageId == NULL)
				$pageData = \getApiPages() -> getPage(0,$url[count($url)-1]);
			else
				$pageData = \getApiPages() -> getPage($pageId);

			return $pageData['tcp']['title'];
		}

		public static function getCurrentLoggedInUserId()
		{
			$query = "SELECT `id` FROM `table_users` WHERE CONCAT(firstname , ' ' , lastname) = ?";

			$link = \SjConfig() -> getLink();

			if($stmt = $link -> prepare($query))
			{
				$stmt -> bind_param('s',$_SESSION['login']);
				$stmt -> execute();

				$stmt -> bind_result($id);

				while($row = $stmt -> fetch())
					$id = $id;

				$stmt -> close();

			}

			return $id;
		}
	}