<?php namespace models;

	/** 
	* @author  Kevin Newesil <newesil.kevin@gmail.com>
	* @version  1.0 
	* @package  default
	* 
	*/
	class User extends \core\system\model
	{
		/**
		 * Calls the main model class.
		 */
		public function __construct()
		{
			parent::__construct();
		}

		/**
		 * Checks if the values are correct, and updates the user information vai the post request.
		 * @return boolean return true if user data is updated succesfully
		 */
		public function update()
		{
			$rows   = array( 'firstname','lastname','username','email','dob','dev' );
			$values = array( 
				parent::$_post -> firstname,
				parent::$_post -> lastname,
				parent::$_post -> username,
				parent::$_post -> email,
				parent::$_post -> dob,
				isset(parent::$_post -> developer) && parent::$_post -> developer == 'on' ? 1 : 0,
			);
			$where = array('id' => parent::$_post -> userId);

			if( parent::$_post -> password == parent::$_post -> passwordCheck &&
				parent::__validates( array( 'password' => parent::$_post -> password), array( 'firstname' , '-' , 'password' , '-' , 'registered_at' )
			))
				if(\api\Api::updateTable( $this -> _table ,$rows,$values,$where ))
					return true;
				else
					return false;
			else
				return false;

		}
		
	}
