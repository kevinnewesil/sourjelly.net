<?php namespace abstracts; if(!defined("DS")) die('no direct script access');
	
	/**
	 * @author Kevin Newesil <newesil.kevin@gmail.com>
	 * @copyright Sourjelly
	 * @version 1.0
	 * @category Abstract
	 * 
	 * @example $sj = new \core\build\Sourjelly($ajax = (bool) true/false ); $sj -> getApi() -> getApiPages() -> getAllPages();
	 * 
	 * Define all methods that are callable
	 * 
	 * @method mixed getConfig(string $param)
	 * @method mixed getApi(string $param)
	 * @method mixed getDb(string $param)
	 * @method mixed getsecure(string $param)
	 * 
	 * @method object getGet()
	 * @method object getPost();
	 * 
	 * @method bool loadCompilers(string $name)
	 * 
	 * The properties of the Sourjelly Class
	 * 
	 * @property object _config 	Object that holds the config class.
	 * @property object _api 		Object that holds all API objects.
	 * @property object _db 		Object that holds access to the database.
	 * @property object _secure 	Object that cleans every requests and checks if requests are valid.
	 * 
	 * @property object _al 		The autoloader object -> loaded when user is logged in and is admin
	 * @property object _wv 		The webview object 	-> loaded when user is not loggen in or not admin.
	 * 
	 * @property object _settings	Array with all pre-defined system settings
	 * @property object _html 		The html that has to be rendered to the user.
	 */
	abstract class Sourjelly_Abstract
	{	

		// Protected static variables that have the objects of the system core.
		protected static $_config;
		protected static $_api;
		protected static $_db;
		protected static $_secure;

		// Protected static variables that contain the code to build the pages for users/visitors.
		protected static $_al;
		protected static $_wv;

		// Protected static variables to set the rest of the views and settings.
		protected static $_settings;
		protected static $_html;

		/**
		 * The construct function of the sourjelly class loads all files that are needed to provide the core system of sourjelly
		 * it loads the code from the required files and starts running the code via the proper functions.
		 * 
		 * @see \core\build\Sourjelly -> startSourjelly()
		 * @see \core\build\Sourjelly -> finishSourjelly()
		 * 
		 * This function also sets the get and post super global variables into cleaned objects
		 * 
		 * @see  \core\build\Sourjelly::$_get
		 * @see  \core\build\Sourjelly::$_post
		 * 
		 * @param boolean $ajax
		 */
		abstract public function __construct($ajax = false);

		/**
		 * Define the __clone function and exit; the code so that it's not possibly to create coede that does something simmular to __clone. it will fail.
		 */
		abstract public function __clone();

		/**
		 * Basically calls for the main functions of sourjelly
		 * 
		 * @see  \core\build\Sourjelly -> beforeLoad()
		 * @see  \core\build\Sourjelly -> callClasses()
		 * @see  \core\build\Sourjelly -> callFunctions()
		 */
		abstract protected function startSourjelly();

		/**
		 * Loads the helper file functions
		 *
		 * @source \core\helpers.php
		 * @see  \core -> setLogFile()
		 * @see  \core -> removeMagigQoutes()
		 * @see  \core -> unregisterGlobals()
		 * @see  \core -> setTimeszone()
		 */
		abstract protected function beforeLoad();

		/**
		 * descrition
		 * @return [type]
		 */
		abstract protected function callClasses();
		
		/**
		 * descrition
		 * @return [type]
		 */
		abstract protected function callFunctions();

		/**
		 * descrition
		 * @return [type]
		 */
		abstract public static function callTo($var,$function,$params);
		
		/**
		 * descrition
		 * @return [type]
		 */
		abstract public static function getConfig($param = NULL);
		
		/**
		 * descrition
		 * @return [type]
		 */
		abstract public static function getApi($param = NULL);
		
		/**
		 * descrition
		 * @return [type]
		 */
		abstract public static function getHtml($param = NULL);
		
		/**
		 * descrition
		 * @return [type]
		 */
		abstract public static function getDb($param = NULL);
		
		/**
		 * descrition
		 * @return [type]
		 */
		abstract public static function getGet();
		
		/**
		 * descrition
		 * @return [type]
		 */
		abstract public static function getPost();
		
		/**
		 * descrition
		 * @return [type]
		 */
		abstract public static function loadCompilers($name);
		
		/**
		 * descrition
		 * @return [type]
		 */
		abstract protected function finishSourjelly();
		
		/**
		 * descrition
		 * @return [type]
		 */
		abstract protected function checkForLogin($fun);
	}