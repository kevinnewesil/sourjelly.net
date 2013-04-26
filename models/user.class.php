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
				$this -> _post -> firstname,
				$this -> _post -> lastname,
				$this -> _post -> username,
				$this -> _post -> email,
				$this -> _post -> dob,
				isset($this -> _post -> developer) && $this -> _post -> developer == 'on' ? 1 : 0,
			);
			$where = array('id' => $this -> _post -> userId);

			if( $this -> _post -> password == $this -> _post -> passwordCheck &&
				parent::__validates( array( 'password' => $this -> _post -> password), array( 'firstname' , '-' , 'password' , '-' , 'registered_at' )
			))
				if(\api\Api::updateTable( $this -> _table ,$rows,$values,$where ))
					return true;
				else
					return false;
			else
				return false;

		}
		
	}
