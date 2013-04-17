<?php namespace controllers; if(!defined("DS")) die('no direct script access!');

	/** 
	* @author  Kevin Newesil <newesil.kevin@gmail.com>
	* @version  1.0 
	* @package  default
	* 
	*/
	class Users extends \core\system\Controller
	{

		/**
		 * This function calls for the main controller function.
		 */
		public function __construct()
		{
			parent::__construct();
		}

		/**
		 * Build the html for the user page.
		 */
		function index()
		{
			$page = \core\build\Template::getTemplate('user/index.html.tpl');
			$placeholders = array('{id}','{registered_at}','{firstname}','{lastname}','{username}','{dob}','{email}','{checked}','{hashed_email}','{url_encoded}');
			$userInfo = \api\Api::getUsers() -> getUserBySession();

			$replacers = array(
					$userInfo['id'],
					$userInfo['registered_at'],
					$userInfo['firstname'],
					$userInfo['lastname'],
					$userInfo['username'],
					$userInfo['DoB'],
					$userInfo['email'],
					$userInfo['dev'] === 1 ? 'checked="checked"' : '',
					md5(strtolower(trim($userInfo['email']))),
					urlencode(HOME_PATH . '/users/index/?ns=controllers&path=controller_path'),
				);

			$page = str_replace($placeholders,$replacers,$page);

			\core\build\Sourjelly::callTo('html','assign',array('{content}',$page));
		}
		
		/**
		 * [create description]
		 * @return [type] [description]
		 */
		function create()
		{
			
		}

		/**
		 * This function calls the user model, and updates the user information.
		 */
		function update()
		{
			if($this -> _model -> update())
				\core\access\Redirect::To(HOME_PATH . '/users/index/?ns=controllers&path=controller_path' , 'User information updated successfully' , 'success');
			else
				\core\access\Redirect::To(HOME_PATH . '/users/index/?ns=controllers&path=controller_path' , 'Something went wrong updating the user information');
		}

		/**
		 * [delete description]
		 * @return [type] [description]
		 */
		function delete()
		{
			
		}

	}
