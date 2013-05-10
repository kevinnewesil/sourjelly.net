<?php namespace core\build; if(!defined("DS")) die('no direct script access!');
	
	/**
	 * @author  Kevin Newesil <Newesil.kevin@gmail.com>
	 * @version 1.0
	 * @package default
	 * 
	 * this is where the magic happens. All the system shit is loaded here, the system actions are defined here, everything is saved and parsed here.
	 * There's no other possibility then to go via this file. if you manage to invade this file and get into the system you're an idiot.
	 * You'll ruin the whole system. Please keep using the f*cking Sourjelly class to save our lives.
	 * 
	 */
	final class Sourjelly extends \abstracts\Sourjelly_Abstract implements \interfaces\Sourjelly_Interface
	{
		protected static $_config;
		protected static $_api;
		protected static $_db;
		protected static $_secure;
		
		protected static $_al;
		protected static $_wv;
		
		protected static $_settings;
		protected static $_html;

		private $_ajax;

		private static $_get;
		private static $_post;

		/**
		 * __construct() requires the system files, which build the system.
		 */
		final public function __construct($ajax = false)
		{
			// Set ajax for ajax request
			$this -> _ajax = $ajax;

			// Require the core files of the system.
			// Sour jelly's back bone
			require(CONFIG_PATH . 'config.class.php');
			require(CDB_PATH . 'databaseBase.class.php');
			require(CORE_PATH . 'helpers.php');

			require(ACCESS_PATH . 'system.class.php');
			require(ACCESS_PATH . 'redirect.class.php');
			require(ACCESS_PATH . 'request.class.php');
			require(ACCESS_PATH . 'secure.class.php');

			require(BUILD_PATH . 'autoloader.class.php');
			require(BUILD_PATH . 'template.class.php');
			require(BUILD_PATH . 'htmlBase.class.php');
			require(BUILD_PATH . 'module.class.php');
			require(BUILD_PATH . 'webview.class.php');

			require(SYSTEM_PATH . 'controller.class.php');
			require(SYSTEM_PATH . 'model.class.php');
			require(SYSTEM_PATH . 'simpleLoader.php');

			require(API_PATH . 'api.class.php');

			self::$_get  = \core\access\Request::returnGlobalObject('get');
			self::$_post = \core\access\Request::returnGlobalObject('post');

            $this -> startSourjelly();
            $this -> finishSourjelly();
		}

		/**
		 * Disable cloning of sourjelly object
		 */
		final public function __clone()
		{
			exit;
		}

		/**
		 * startSourjelly() An inbetween function, that handles the request made from the __construct, and splits it over the functions that should be executed.
		 */
		final protected function startSourjelly()
		{
			//Render core classes and functions
			$this -> beforeLoad();
			$this -> callClasses();
			$this -> callFunctions();
			
			return;
		}

		/**
		 * callFunctions This function calls the helper file, and executes basis user settings.
		 * after that it uses the @class -> \config\Config , to set the user's system configuration right.
		 */
		final protected function beforeLoad()
		{
			//Call the /core/helpers.php functions for better code processing.
			\core\setLogFile();
			\core\removeMagicQoutes();
			\core\unregisterGlobals();
			\core\setTimezone();

			return;
		}

		/**
		 * CallClasses, calls the basic classes that start up the CMS system.
		 * if the request is not from an Command line interface execute the webbuilder.
		 * if there's a login request, resign to the login, else, autoload the controller, called by user. see @class -> \core\build\Autoloader
		 */
		final protected function callClasses()
		{
			//Call for config and database class for rest of code.
			self::$_config = new \config\Config;
			self::$_db     = new \core\database\DatabaseBase;
			self::$_api    = new \api\Api;
			//self::$_secure = new \core\access\Secure;

			//Set user language.
			$_SESSION['user_language'] = \api\Api::getUsers() -> getUserLanguageBySession();

			// Pre define variables
			$fun = array('','');

			if (PHP_SAPI !== 'cli' && $this -> _ajax !== true) {
				// Read the url and explode on index.php
				$url = explode('index.php/',$_SERVER['REQUEST_URI']);
				
				// Check if controller is in url
				if(isset($url[1]) && $url[1] != '')
					$fun = explode('/',$url[1]);
				
				//Check the user permissions to make sure that only the class is build the visitor has access to.
				if(\api\Api::getUsers() -> getUserpermissionsBySession() > 1)
				{
					//Check the system for critical requirements
					if(!isset($_SESSION['system_warning']))
						self::$_settings = new \core\access\System;

					if(isset(self::$_get -> ajax) && self::$_get -> ajax == 'true')
						// Set the html object to an empty template for not re-using the header.
						self::$_html = new HtmlBase('empty');
					else
						// Set the html object to admin template
						self::$_html = new HtmlBase('admin');
				}
				else
					// Set the html object to the main template
					self::$_html = new HtmlBase('main');

				//Check for permissions again so that administrators don't have to be the only users on the website, and login is made possible.
				if($this -> checkForLogin($fun))
					self::$_al = new \core\build\autoloader;
				else
					self::$_wv = new \core\build\Webview;
			}

			return;

		}

		final protected function callFunctions()
		{
			//Change the php.ini settings to the users ini settings
			self::$_config -> setSystemSettings();

			return;
		}

		/**
		 * callTo This function statically calls a function from an object set as property in @class -> \core\build\Sourjelly
		 * @param  [string] $var      [the name of the param being called]
		 * @param  [string] $function [the function of the object of the param being called]
		 * @param  [array] $params    [the params of the function of the object of the property being called]
		 * @return [Sourjelly]
		 */
		final public static function callTo($var,$function,$params)
		{
			// Create a string that requires the static param from the Sourjelly class.
			$selfFunction = 'self::get' . ucfirst($var) . '()';
			// Call the HtmlBase class object
			$object = self::getHtml();
			// Make an array of the object and function for usage in the call user func array
			$callable = array($object , $function);
			// Call the function with the params from the object.
			call_user_func_array($callable, $params);

			return;
		}

		/**
		 * The getter functions of this class, callable, to get the object of the properties of @class -> \core\build\Sourjelly
		 * @param  [string] $param 		[the name of the property that's being called in the object that's returned][optional]
		 * @return [object/value]       [The object the getter is called for / the value of the property in the object the getter is called for]
		 */
		final public static function getConfig($param = NULL)
		{
			if($param === NULL)
				return self::$_config;
			else
			{
				$func = 'get' . ucfirst($param);
				return self::$_config->{$func}();
			}
		}

		final public static function getApi($param = NULL)
		{
			if($param === NULL)
				return self::$_api;
			else
			{
				$func = 'get' . ucfirst($param);
				return self::$_api->{$func}();
			}
		}

		final public static function getHtml($param = NULL)
		{
			if($param === NULL)
				return self::$_html;
			else
			{
				$func = 'get' . ucfirst($param);
				return self::$_config->{$func}();
			}
		}

		final public static function getDb($param = NULL)
		{
			if($param === NULL)
				return self::$_db;
			else
			{
				$func = 'get' . ucfirst($param);
				return self::$_db->{$func}();
			}
		}

		final public static function getGet(){ return self::$_get; }
		final public static function getPost(){ return self::$_post; }


		/**
		 * Function that load compiler files and returns the result
		 * @param  string  $name The name of  the compiler that should be loaded.
		 * @return boolean       true on valid require.
		 */
		final public static function loadCompilers($name)
		{
			return require(SYSTEM_PATH . $name . 'Compiler.class.php');
		}

		/**
		 * function that runs on the end of sourjelly, that buils the html and shows it to the user
		 * If the request is not made via ajax or command line interface this function is rendered
		 */
		final protected function finishSourjelly()
		{	
			if(!$this -> _ajax && PHP_SAPI !== 'cli')
				// build the html!
				self::getHtml()->Build();
		}

		/**
		 * 
		 */
		final protected function checkForLogin($fun)
		{
			$return = false;

			if(isset($_SESSION['login']) && \getApiUsers() -> getUserpermissionsBySession() > 1)
				$return = true;
			else if(
				isset(self::$_get -> login) && self::$_get -> login != 'login' || $fun[0] != 'auth' || $fun[1] != 'login'
			)
				$return = false;
			else
				$return = true;

			return $return;
		}
	}
