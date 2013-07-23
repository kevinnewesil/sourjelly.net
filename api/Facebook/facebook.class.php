<?php namespace api;
	
	/**
	 * @todo  Write function that makes a save request to ask for api secret.
	 */

	class SjFacebook
	{
		private $_facebook;

		private $_loginParams;

		public function __construct()
		{
			require(API_PATH . 'facebook/sdk_facebook.php');
		}

		public static function getSettings()
		{
			$query = "SELECT * FROM `table_facebook` WHERE `uId` = (SELECT `id` FROM `table_users` WHERE CONCAT(firstname , ' ' , lastname) = " . $_SESSION['login'] . ");";
			$return = false;
			$link = \sjConfig() -> getLink();

			if($stmt = $link -> query($query))
				if($stmt -> num_rows != 1)
					while($row = $stmt -> fetch_assoc())
						$return[] = $row;

			return $return;
		}

		public function connect()
		{
			$this -> _facebook = new \Facebook(
				array(
					'appId'  => '150590158433728',
					'secret' => '3562978d4fd1c9e31a695c7bb6b4573a',
				)
			);

			$user = $this -> _facebook -> getUser();

			if($user === 0)
			{
				$this -> setLoginParams();
				$loginUrl = $this -> _facebook -> getLoginUrl($this -> _loginParams);
				return array('loginUrl' => $loginUrl);
			}


		}	

		private function setLoginParams()
		{
			$this -> _loginParams = array(
				'scope' => $this -> getScope(),
				'redirect_uri' => \core\Helpers::GetCurrentUrl()	
			);
		}

		private function getScope()
		{
			if(!class_exists("\\controllers\\Settings"))
				require(CONTROLLER_PATH . 'settings.class.php');

			$settings = \controllers\Settings::getSettings('facebook');

			return $settings['scope'];
		}
	}