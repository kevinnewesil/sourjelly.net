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
				$_POST['firstname'],
				$_POST['lastname'],
				$_POST['username'],
				$_POST['email'],
				$_POST['dob'],
				isset($_POST['developer']) && $_POST['developer'] == 'on' ? 1 : 0,
			);
			$where = array('id' => $_POST['userId']);

			if( $_POST['password'] == $_POST['passwordCheck'] &&
				parent::__validates( array( 'password' => $_POST['password'] ), array( 'firstname' , '-' , 'password' , '-' , 'registered_at' )
			))
				if(\api\Api::updateTable( $this -> _table ,$rows,$values,$where ))
					return true;
				else
					return false;
			else
				return false;

		}
		
	}
