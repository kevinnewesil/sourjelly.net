<?php namespace core\access;

	/**
	 * @author  Kevin Newesil <newesil.kevin@gmail.com>
	 * @version  1.0
	 * @package  default
	 *
	 */
	class Auth
	{
		protected $_username;
		protected $_password;
		protected $_email;
		protected $_created_at;
		protected $_name;
		protected $_link;

		/**
		 * This function checks if there's a post request to login, if there is it starts the @see postLogin(); if there isn't it starts the
		 * @see getLogin() function.
		 */
		public function login()
		{
			if(isset($_POST['login']))
				$this->postLogin();
			else
				$this->getLogin();
		}

		/**
		 * Render the login for html.
		 */
		private function getLogin()
		{
			\core\build\Sourjelly::getHtml()->Assign(array('{pages}','{title}','{content}','{moduleHtml}'),array('','Login',\core\build\Template::getTemplate('auth/login.html.tpl'),''));
		}

		/**
		 * this function sets the data of the login post right, and checks if the login is valid. if the login is valid creates a session that login is true,
		 * else it redirects to the login form, with an error message.
		 */
		private function postLogin()
		{

			$this->_email = $_POST['email'];
			$password = $_POST['password'];

			unset($_POST);

			$user = \api\Api::getUsers() -> getUserByUsernameOrEmail($this->_email,$this->_email);

			$this->_password = sha1($user['firstname'] . '-' . $password . '-' . $user['registered_at']);
			$this->_username = $user['username'];
            
            if($this->_password === $user['password'])
				if($_SESSION['login'] = $user['firstname'] . ' ' . $user['lastname'])
					\core\access\Redirect::home('logged in successfully','success');
				else
					\core\access\Redirect::Refresh('Session for user could not be created, please contact an administrator. || authclass;');
			else
				\core\access\Redirect::Refresh('Username or Password wrong..');

		}

		/**
		 * Function that destroys all user related session and redirects a user to the home page.
		 */
		public function logout()
		{
			session_unset($_SESSION['login']);
			session_unset($_SESSION['user_language']);
			session_destroy();
			\core\access\Redirect::home();
		}
	}
