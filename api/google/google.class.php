<?php namespace api; if(!defined("DS")) die('no direct script access');

	class SjGoogle
	{
		protected $_token;
		protected $_email;

		protected $_googleClient;
		protected $_settings;

		protected $_timeObject;

		public function __construct($connectData)
		{
			parent::__construct();

			if(empty($connectData) or $connectData == '' or !is_array($connectData))
				\core\access\Redirect::Home('No google api data provided.');

			require(API_PATH . 'google/client/Google_Client.php');
			$this -> _googleClient = new Google_Client;

			foreach($connectData as $key => $value)
			{
				$function = 'set' .ucfirst($key);
				$this -> _googleClient -> $function($value);
				$this -> _settings[$key] = $value;
			}
		}

		public function setConnection()
		{
			if(isset($_GET['code']))
			{
				$this -> _googleClient -> authenticate();
				if(!$this -> getGoogleAccessToken())
				{
					header('location:' . $this -> _googleClient -> getAuthUrl());
					exit();
				}

			}
		}

		public function setServices($services)
		{
			if(empty($services) or !is_array($services))
				\core\access\Redirect::Home('no valid services provided','error');
		}

		public function resetToken()
		{
			
		}

		public function getGoogleDateTimeEvent($timestamp, $timezone = 'Europe/London')
		{
			$obj = new Google_EventDateTime();
			$obj -> setDateTime($this -> getGoogleDateFormat($timestamp));
			$obj -> setTimeZone($timezone);
			return $obj;
		}

		public function getGoogleDateFormat($timestamp)
		{
			return date("Y-m-d\TH:i:s.000+P",$timestamp);
		}

		protected function getGoogleAccessToken()
		{
			return \api\Api::selectRow("SELECT `authToken` FROM `table_google_api` INNER JOIN `table_users` ON table_google_api.uId = table_users.id WHERE CONCAT(firstname , ' ' , lastname) = '" . $_SESSION['login'] . "'");
		}
	}
