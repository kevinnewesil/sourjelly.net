<?php
	
	//Define Directory separator
	DEFINE("DS", DIRECTORY_SEPARATOR);

	//define that we're developing
	DEFINE("DEV_ENV",true);

	//Define paths
	DEFINE('MAIN_PATH', dirname(__DIR__) . DS);

	if(isset($_SERVER['HTTP_HOST']) && $_SERVER['HTTP_HOST'] == 'localhost' && $_SERVER['SCRIPT_NAME'] !== 'index.php')
	{
		DEFINE('AJAX_PATH', dirname(dirname($_SERVER['SCRIPT_NAME'])) . DS . 'ajax' . DS);
		DEFINE('ASSETS_PATH', dirname($_SERVER['SCRIPT_NAME']) . DS . 'assets' . DS);
		DEFINE('MODULES_ASSETS_PATH' ,dirname(dirname($_SERVER['SCRIPT_NAME'])) . DS .  'modules' . DS);
	}
	else
	{
		DEFINE('AJAX_PATH' , '..' . DS . 'ajax' . DS);
		DEFINE('ASSETS_PATH' , DS . 'assets' . DS);
		DEFINE('MODULES_ASSETS_PATH' , '..' . DS . 'modules' . DS);
	}

	DEFINE('HOME_PATH', $_SERVER['SCRIPT_NAME']);

	// More accurate paths for the HTML includes.
	DEFINE('CSS_PATH',ASSETS_PATH . 'css/');
	DEFINE('JS_PATH',ASSETS_PATH . 'js/');
	DEFINE('IMG_PATH',ASSETS_PATH . 'img/');
		
	// Define all paths to all folders for easier access, and less typing when including files in code.
	DEFINE('CONFIG_PATH', MAIN_PATH . 'config/');
	DEFINE('CORE_PATH', MAIN_PATH . 'core/');
	DEFINE('DB_PATH', MAIN_PATH . 'database/');
	DEFINE('PUBLIC_PATH', MAIN_PATH . 'public/');
	DEFINE('VIEWS_PATH', MAIN_PATH . 'views/');
	DEFINE('MODULES_PATH', MAIN_PATH . 'modules/');
	
	// All the core system folders are defined here... obviously.
	DEFINE('BASE_PATH', CORE_PATH . 'base/');
	DEFINE('CONN_PATH', CORE_PATH . 'connectors/');
	DEFINE('ACCESS_PATH', CORE_PATH . 'access/');
	DEFINE('BUILD_PATH', CORE_PATH . 'build/');
	DEFINE('SYSTEM_PATH', CORE_PATH . 'system/');
	DEFINE('CDB_PATH', CORE_PATH . 'database/');
	
	// All the other folders are defined in this small part, thanks a bundle for reading this bull.
	DEFINE('CONTROLLER_PATH', MAIN_PATH . 'controllers/');
	DEFINE('MODEL_PATH', MAIN_PATH . 'models/');
	DEFINE('API_PATH', MAIN_PATH . 'api/');
	DEFINE('INTERFACE_PATH', MAIN_PATH . 'interfaces/');
	DEFINE('TMP_PATH' , MAIN_PATH . 'tmp/');
	
	// Define namespaces (used in the autoloader class).
	DEFINE('ACCESS','\core\access');
	DEFINE('BUILD','\core\build');
	DEFINE('COREDATABASE','\core\database');
	
	DEFINE('ADMIN','\core\build\admin');
	
	DEFINE('MODELS','\models');
	DEFINE('DATABASE','\database');
	DEFINE('CONTROLLERS','\controllers');
	
	DEFINE('API', '\api');
