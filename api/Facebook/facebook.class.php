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
			}
		}

		private function setLoginParams()
		{
			$this -> _loginParams = array(
				'scope' => $this -> getScope(),
				'redirect_uri' => 'http://localhost/sourjelly.net/public_html/index.php/settings/social/?ns=controllers&path=controller_path'	
			);
		}

		private function getScope()
		{
			
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
	}