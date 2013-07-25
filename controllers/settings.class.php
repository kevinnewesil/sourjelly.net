<?php namespace controllers;

	/** 
	* @author  Kevin Newesil <newesil.kevin@gmail.com>
	* @version  1.0 
	* @package  default
	* 
	*/
	class Settings extends \core\system\Controller
	{
		/**
		 * Calls for the main controller function to be created, so that the controller has al the main attributes and methods.
		 */
		public function __construct()
		{	
			parent::__construct();
		}

		/**
		 * This function renders the html of the settings page, and replaces all the values of the form with the settings the user has allready set.
		 */
		public function index()
		{
			$page = \core\build\Template::getTemplate('settings/index.html.tpl');
			$settings = \core\build\Sourjelly::getApi() -> getSettings() -> getSystemSettings();

			$placeholders = array(
				'{checked_displayErrors}',
				'{checked_displayStartupErrors}',
				'{checked_logErrors}',
				'{checked_trackErrors}',
				'{checked_htmlErrors}',
				'{maxExecutionTime}',
				'{memoryLimit}',
				'{postMaxSize}',
				'{uploadMaxFilesize}',
				'{maxFileUploads}',
				'{checked_embeddedHtml}',
				'{checked_ipMonitoring}',
				'{timezone}',
			);
			
			$replacers = array(
				$settings['displayErrors'] == 1 ? 'checked="checked"' : '',
				$settings['displayStartupErrors'] == 1 ? 'checked="checked"' : '',
				$settings['logErrors'] == 1 ? 'checked="checked"' : '',
				$settings['trackErrors'] == 1 ? 'checked="checked"' : '',
				$settings['htmlErrors'] == 1 ? 'checked="checked"' : '',
				$settings['maxExecutionTime'],
				$settings['memoryLimit'],
				$settings['postMaxSize'],
				$settings['uploadMaxFilesize'],
				$settings['maxFileUploads'],
				$settings['embeddedHtml'] == 1 ? 'checked="checked"' : '',
				$settings['ipMonitoring'] == 1 ? 'checked="checked"' : '',
				$settings['timezone']
			);

			$page = str_replace($placeholders, $replacers, $page);
			\core\build\Sourjelly::getHtml()->assign('{content}',$page);
		}

		/**
		 * This function calls for the settings model, and updates the system settings.
		 */
		function update()
		{
			if(\api\Api::getUsers() -> getUserpermissionsBySession() <= 2)
				\GoHome('No permissions to change system settings');
			
			if($this->_model -> update())
				\SetNoticeSuccess('System settings successfully updated');
			else
				\core\access\Redirect::To(HOME_PATH . '/settings/index/?ns=controllers&path=controller_path' , 'something went wrong updating the system settings.');
		}
        
        public function social()
        {
        	if(isset($this -> _post -> medium))
        		$this -> _model -> {$this -> _post -> medium}();

        	$template = \Template('settings/socialmedia.html.tpl');
        	$facebookSettings = $this -> getSettings('facebook');

        	$placeholdersFacebook = array('{fbJson}','{appName}','{appId}','{appSecret}');

        	$replacersFacebook = array(json_encode(explode(',',trim($facebookSettings['scope']))) , $facebookSettings['appName'] , $facebookSettings['appId'] , $facebookSettings['appSecret']);

        	$template = str_replace($placeholdersFacebook,$replacersFacebook,$template);

			\SjHtml()->Assign('{content}', $template ); 
        }

        public static function getSettings($medium)
        {
        	$link = \sjConfig() -> getLink();
        	$res = false;

        	if($stmt = $link -> query("SELECT * FROM `table_" . $medium ."`;"))
        	{
        		$res = $stmt -> fetch_assoc();
        		$stmt -> close();
        		
        	}

        	return $res;
        }
	}
