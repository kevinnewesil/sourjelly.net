<?php namespace core\access;

	/**
	 * @author  Kevin Newesil <newesil.kevin@gmail.com>
	 * @version  1.0
	 * @package  default
	 *
	 */
	final class Auth
	{
		protected $_username;
		protected $_password;
		protected $_email;
		protected $_created_at;
		protected $_name;
		protected $_link;

		protected $_post;

		protected $_cli;

		/**
		 * This function checks if there's a post request to login, if there is it starts the @see postLogin(); if there isn't it starts the
		 * @see getLogin() function.
		 */
		final public function login($cli = false)
		{
			$this -> _post = \Post();
			$return = false;

			if($cli)
				$this -> _cli = true;
			else
				$this -> _cli = false;

			if(isset($this -> _post -> login))
				$return = $this->postLogin();
			
			if(!$this -> _cli)
				$return = $this->getLogin();

			return $return;
		}

		/**
		 * Render the login for html.
		 */
		final private function getLogin()
		{
			\core\build\Sourjelly::getHtml()->Assign(array('{navigation}','{title}','{content}','{moduleHtml}'),array('','Login',\core\build\Template::getTemplate('auth/login.html.tpl'),''));
		}

		/**
		 * this function sets the data of the login post right, and checks if the login is valid. if the login is valid creates a session that login is true,
		 * else it redirects to the login form, with an error message.
		 */
		final private function postLogin()
		{

			$this->_email = $this -> _post -> email;
			$password = $this -> _post -> password;

			$user = \api\Api::getUsers() -> getUserByUsernameOrEmail($this->_email,$this->_email);

			$this->_password = sha1($user['firstname'] . '-' . $password . '-' . $user['registered_at']);
			$this->_username = $user['username'];

            if($this->_password === $user['password'])
				if($_SESSION['login'] = $user['firstname'] . ' ' . $user['lastname'])
					if(!$this -> _cli)
						\core\access\Redirect::home('logged in successfully','success');
					else
						return true;
				else
					\SetNotice('Session for user could not be created, please contact an administrator. || authclass;');
			else
				\SetNotice('Username or Password wrong..');

			return false;

		}

		/**
		 * Function that destroys all user related session and redirects a user to the home page.
		 */
		final public function logout()
		{
			session_unset($_SESSION['login']);
			session_unset($_SESSION['user_language']);
			session_destroy();
			\core\access\Redirect::home();
		}
	}
