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
			if( \api\Api::updateTable('table_users',array('lang'),array($this -> _post -> lang),array("CONCAT(firstname , ' ' , lastname)" => $_SESSION['login'])) || \api\Api::updateTable(
				"table_settings",
				array('displayErrors','displayStartupErrors','logErrors','trackErrors','htmlErrors','maxExecutionTime','memoryLimit','postMaxSize','uploadMaxFilesize','maxFileUploads','embeddedHtml','ipMonitoring','timezone'),
				array(
					isset($this -> _post -> displayErrors) && $this -> _post -> displayErrors == 'on' ? 1 : 0,
					isset($this -> _post -> displayStartupErrors) && $this -> _post -> displayStartupErrors == 'on' ? 1 : 0,
					isset($this -> _post -> logErrors) && $this -> _post -> logErrors == 'on' ? 1 : 0,
					isset($this -> _post -> trackErrors) && $this -> _post -> trackErrors == 'on' ? 1 : 0,
					isset($this -> _post -> htmlErrors) && $this -> _post -> htmlErrors == 'on' ? 1 : 0,
					$this -> _post -> maxExecutionTime,
					$this -> _post -> memoryLimit,
					$this -> _post -> postMaxSize,
					$this -> _post -> uploadMaxFilesize,
					$this -> _post -> maxFileUploads,
					isset($this -> _post -> embeddedHtml) && $this -> _post -> embeddedHtml == 'on' ? 1 : 0,
					isset($this -> _post -> ipMonitoring) && $this -> _post -> ipMonitoring == 'on' ? 1 : 0,
					$this -> _post -> timezone,
				),
				array('id' => '1')
			))
				return true;
			else
				return false;
		}
	
	}
