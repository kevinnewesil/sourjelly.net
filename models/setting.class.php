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
			if( \api\Api::updateTable('table_users',array('lang'),array($_POST['lang']),array("CONCAT(firstname , ' ' , lastname)" => $_SESSION['login'])) || \api\Api::updateTable(
				"table_settings",
				array('displayErrors','displayStartupErrors','logErrors','trackErrors','htmlErrors','maxExecutionTime','memoryLimit','postMaxSize','uploadMaxFilesize','maxFileUploads','embeddedHtml','ipMonitoring','timezone'),
				array(
					isset($_POST['displayErrors']) && $_POST['displayErrors'] == 'on' ? 1 : 0,
					isset($_POST['displayStartupErrors']) && $_POST['displayStartupErrors'] == 'on' ? 1 : 0,
					isset($_POST['logErrors']) && $_POST['logErrors'] == 'on' ? 1 : 0,
					isset($_POST['trackErrors']) && $_POST['trackErrors'] == 'on' ? 1 : 0,
					isset($_POST['htmlErrors']) && $_POST['htmlErrors'] == 'on' ? 1 : 0,
					$_POST['maxExecutionTime'],
					$_POST['memoryLimit'],
					$_POST['postMaxSize'],
					$_POST['uploadMaxFilesize'],
					$_POST['maxFileUploads'],
					isset($_POST['embeddedHtml']) && $_POST['embeddedHtml'] == 'on' ? 1 : 0,
					isset($_POST['ipMonitoring']) && $_POST['ipMonitoring'] == 'on' ? 1 : 0,
					$_POST['dataTimezone'],
				),
				array('id' => '1')
			))
				return true;
			else
				return false;
		}
	
	}
