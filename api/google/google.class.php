<?php namespace api\google; if(!defined("DS")) die('no direct script access');

	class Google exents \api\Api
	{

		protected $_token;
		protected $_email;

		protected $_google;
		protected $_settings;

		public function __construct($connectData)
		{
			parent::__construct();

			if(empty($connectData) or $connectData == '' or !is_array($connectData))
				\core\access\Redirect::Home('No google api data provided.');

			require(API_PATH . 'google/client/Google_Client.php');
			$this -> _google = new Google_Client;

			foreach($connectData as $key => $value)
			{
				$function = 'set' .ucfirst($key);
				$this -> _google -> $function($value);
				$this->_settings[$key] = $value;
			}
		}

		public function setConnection()
		{

		}

		public function setServices($services)
		{
			if(empty($services) or !is_array($services))
				\core\access\Redirect::Home('no valid services provided','error');
		}

		public function resetToken()
		{

		}
	}
