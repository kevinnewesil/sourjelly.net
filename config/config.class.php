<?php namespace config; if(!defined("DS")) die('no direct script access!');

	/**
	 * @author Kevin Newesil <newesil.kevin@gmail.com>
	 * @package  config
	 * @version  1.0
	 *
	 * The config class builds up the system config variables, sets the link to the database, replaced the regulair ini settings to the user's settings. etc.
	 * Users the main.config.php file, the set the config variable.
	 *
	 * @var $_db 		The data which is used to connect to the database.
	 * @var $_css 		The css files which should be included in the html
	 * @var $_js 		The Javascript files which should be included in the html.
	 * @var $_custom 	The custom information that a user sets if he/she should edit the config file.
	 * @var $_link		The link to the database, set in the config file, This is the one that the code should be calling...
	 *
	 * @see config/main.config.php for more information about the config variable.
	 */
	class Config
	{

		protected $_db  = array();
		protected $_css = array();
		protected $_js  = array();

		protected $_custom = array();

		protected static $_link = NULL;

		/**
		 * Requires the main config file, and uses it's variable to set the main config data inside the class as protected properties.
		 */
		public function __construct()
		{
			$config = require(CONFIG_PATH . 'main.config.php');

			$this->_db 			= $config['db'];
			$this->_css 		= $config['css'];
			$this->_js	 		= $config['js'];
			$this->_custom 		= $config['custom'];

			unset($config);

			if(self::$_link == NULL)
				self::$_link = new \Mysqli(
					$this->_db['mysqli']['host'],
					$this->_db['mysqli']['user'],
					$this->_db['mysqli']['pass'],
					$this->_db['mysqli']['name']
				);
		}

		/**
		 * Get's the user's system settings and replaces the original INI settings with them.
		 */
		public function setSystemSettings()
		{
			$settings = \core\build\Sourjelly::getApi() -> getSettings() -> getSystemSettings();
			if($settings !== NULL || !empty($settings))
			{
				ini_set('display_errors' 		 ,$settings['displayErrors'] 		== 1 ? 'On' : 'Off');
				ini_set('display_startup_errors' ,$settings['displayStartupErrors'] == 1 ? 'On' : 'Off');
				ini_set('log_errors'			 ,$settings['logErrors'] 			== 1 ? 'On' : 'Off');
				ini_set('track_errors'			 ,$settings['trackErrors'] 			== 1 ? 'On' : 'Off');
				ini_set('html_errors'			 ,$settings['htmlErrors'] 			== 1 ? 'On' : 'Off');
				ini_set('max_execution_time'	 ,$settings['maxExecutionTime']		  );
				ini_set('memory_limit'			 ,$settings['memoryLimit'] 		 . 'M');
				ini_set('post_max_size'			 ,$settings['postMaxSize'] 		 . 'M');
				ini_set('upload_max_filesize'	 ,$settings['uploadMaxFilesize'] . 'M');
				ini_set('max_file_uploads'		 ,$settings['maxFileUploads']		  );

				date_default_timezone_set($settings['timezone']);
			}
		}
		/**
		 * Generates a config file for Modules, which they can use to save user settings in.
		 * @param  array $vars the variables that should come into the config file
		 * @return -     return is a redirect with message for user.
		 */
		public function generateConfig($vars)
		{
			//Simple check if $vars actually is an array, if not parse error and redirect user.
			if(!is_array($vars))
				\core\access\Redirect::refresh("The vars you want to pass trough the config generator should be an array.");

			//Set the Basic variables needed for the config file to be written. Module name, config file layout, placeholders , and predefine of config content var.
			$moduleInfo   = \api\Api::getModules() -> getModuleById(); 
			$configLayout = \core\build\Template::getSnippet('configLayout.html.tpl');
			$placeholders = array( '{varname}' , '{varvalue}' );
			$configFile   = "<?php  \n\r\t " ;

			//Check the folder premission of the Module
			//$info = \core\access\System::getPremissions( MODULES_PATH . $moduleInfo[0][0] );

			//Foreach user inputted variables for the config file, make a string with the config variables set in the config layout
			foreach ($vars as $varname => $varvalue)
				$configFile .= str_replace( $placeholders , array($varname , $varvalue ) , $configLayout );

			// Return the config variable for usage in the system
			$configFile .= " \n\r\n\r\t " . "return $config";

			//Check if the directory config exists in the module, if not crate one.
			if(!is_dir(MODULES_PATH . $moduleInfo[0][0] . '/config'))
				if(!mkdir(MODULES_PATH . $moduleInfo[0][0] . '/config'))
					\core\access\Redirect::Refresh("Couldn't create config folder, check the writing access of your domain root folder");

			//Open a config file, and write the config lines into the config file, which will be created if not existsting
			$fileHandle = fopen(MODULES_PATH . $moduleInfo[0][0] . '/config/config.php' , 'w+');
			fwrite($fileHandle, $configFile);
			fclose($fileHandle);

			//Final checks if everything worked, if the file exists and the update was between a minute ago and a minute later, the file has been updated.
			if(file_exists(MODULES_PATH . $moduleInfo[0][0] . '/config/config.php'))
				if( filectime(MODULES_PATH . $moduleInfo[0][0] . '/config/config.php') > (time() - 60 ) && filectime(MODULES_PATH . $modulesInfo[0][0] . '/config/config.php') < (time() + 60))
					\core\access\Redirect::Refresh("The config file has been updated", "success");
				else
					\core\access\Redirect::Refresh("Config file couldn't not be overwritten");
			else
				\core\access\Redirect::Refresh("The file 'config.php' for the module : " . $moduleInfo[0][0] . " Couldn't be created..");

		}

		/**
		 * Return the class variables.
		 * @return $_link 	MySQLI resource to the database
		 * @return array  	Arrays with the values of each @var of the config class.
		 */
		public static function getLink()
		{
			return self::$_link;
		}

		protected function getDb()
		{
			return $this -> _db;
		}

		protected function getCss()
		{
			return $this -> _css;
		}

		protected function getJs()
		{
			return $this -> _js;
		}

		protected function getCustom()
		{
			return $this -> _custom;
		}
	}
