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
			$value = is_array($value) ? array_map('stripSlashesDeep',$value) : stripslashes($value);
			return $value;
		}
	}

	if(!function_exists('removeMagicQoutes'))
	{
		function removeMagicQoutes()
		{
			//if(get_magic_quotes_gpc())
			//{
			//	$_GET	 = stripSlashesDeep($_GET	);
			//	$_POST	 = stripSlashesDeep($_POST	);
			//	$_COOKIE = stripSlashesDeep($_COOKIE);
			//}
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
