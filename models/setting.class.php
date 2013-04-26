<?php namespace models;

	/**
	* @author  Kevin Newesil <newesil.kevin@gmail.com>
	* @version  1.0 
	* @package  default
	* 
	*/
	class Setting extends \core\system\Model
	{
		/**
		 * Calls for the main model class
		 */
		public function __construct()
		{
			parent::__construct();
		}

		/**
		 * Checks if all the values are correct and updates the settings values.
		 * @return boolean returns true on correct update.
		 */
		public function update()
		{
			if( \api\Api::updateTable('table_users',array('lang'),array(parent::$_post -> lang),array("CONCAT(firstname , ' ' , lastname)" => $_SESSION['login'])) || \api\Api::updateTable(
				"table_settings",
				array('displayErrors','displayStartupErrors','logErrors','trackErrors','htmlErrors','maxExecutionTime','memoryLimit','postMaxSize','uploadMaxFilesize','maxFileUploads','embeddedHtml','ipMonitoring','timezone'),
				array(
					isset(parent::$_post -> displayErrors) && parent::$_post -> displayErrors == 'on' ? 1 : 0,
					isset(parent::$_post -> displayStartupErrors) && parent::$_post -> displayStartupErrors == 'on' ? 1 : 0,
					isset(parent::$_post -> logErrors) && parent::$_post -> logErrors == 'on' ? 1 : 0,
					isset(parent::$_post -> trackErrors) && parent::$_post -> trackErrors == 'on' ? 1 : 0,
					isset(parent::$_post -> htmlErrors) && parent::$_post -> htmlErrors == 'on' ? 1 : 0,
					parent::$_post -> maxExecutionTime,
					parent::$_post -> memoryLimit,
					parent::$_post -> postMaxSize,
					parent::$_post -> uploadMaxFilesize,
					parent::$_post -> maxFileUploads,
					isset(parent::$_post -> embeddedHtml) && parent::$_post -> embeddedHtml == 'on' ? 1 : 0,
					isset(parent::$_post -> ipMonitoring) && parent::$_post -> ipMonitoring == 'on' ? 1 : 0,
					parent::$_post -> timezone,
				),
				array('id' => '1')
			))
				return true;
			else
				return false;
		}
	
	}
