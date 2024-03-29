<?php namespace api\local; if(!defined("DS")) die('no direct script access!');

	/**
	 * @author  Kevin Newesil <newesil.kevin@gmail.com>
	 * @version  1.0
	 * @package  default
	 *
	 * The Api_users class is only callable via the \api\Api class. This user API class , is a local API class that makes calls to the user table.
	 * This class is the only class that is allowed to access the user table.
	 *
	 * @var $_link MySQLI resource The link to the database
	 */
	class Api_users
	{
		protected static $_link;

		/**
		 * Sets the link to the database from the Main \api\Api class into this smaller api class.
		 * @param MySQLI resource $link The link to the database
		 */
		public function __construct($link)
		{
			self::$_link = $link;
		}

		/**
		 * This class gets all user data from the user table, and makes a 2D array with the user data stored as subarray in an array.
		 * @return $user array A 2D array with the users , and their information stored into the 2nd level array.
		 */
		public function getAllUsers()
		{
			$user = array();

			$query = "SELECT * FROM `table_users` WHERE 1";

			if(!\api\Api::checkQuery($query))
					\core\access\Redirect::Home('Something went wrong with the query.');

			if($stmt = self::$_link->query($query))
			{
				if($stmt->num_rows != 0)
				{
					$i = 0;
					while($row = $stmt->fetch_assoc())
					{
						$user[$i] = array();
						foreach($row as $key => $value)
						{
							$user[$i][$key] = $value;
						}
						$i++;
					}

				}
				$stmt->close();
			}
			else
			{
				\SetNotice('Could not fetch users.. <br> error: ' . self::$_link -> error);
				return false;
			}

			return $user;
		}

		/**
		 * @deprecated
		 * @param  int $id The Id which the user information should be recieved with. (search a user by ID)
		 * @return -     -
		 */
		public function getUserById($id)
		{

		}

		/**
		 * Reads out the current login session, and gets the user information by the user session.
		 * @return array $ret An array with the currently logged in user.
		 */
		public function getUserBySession()
		{

			$query = "SELECT `id`,`firstname`,`lastname`,`username`,`email`,`password`,`DoB`,`registered_at`,`active`,`dev`,`permissions`,`lang` FROM `table_users` WHERE CONCAT(firstname, ' ', lastname) = ?";
			if($stmt = self::$_link->prepare($query))
			{
				if(!\api\Api::checkQuery($query))
					\core\access\Redirect::Home('Something went wrong with the query.');

				$stmt -> bind_param('s',$_SESSION['login']);
				$stmt -> execute();
				$stmt -> bind_result($id,$firstname,$lastname,$username,$email,$password,$dob,$registered_at,$active,$dev,$permissions,$lang);

				while($row = $stmt -> fetch()){
                        $ret = array('id'	     => $id,
                                     'firstname'     => $firstname,
                                     'lastname'      => $lastname,
                                     'username'      => $username,
                                     'email'         => $email,
                                     'password'      => $password,
                                     'DoB'           => $dob,
                                     'registered_at' => $registered_at,
                                     'active'        => $active,
                                     'dev'           => $dev,
                                     'permissions'    => $permissions,
                                     'lang'          => $lang
                                    );
                }
                $stmt->close();

			}
			else
			{
				\SetNotice('Could not Fetch current user.. <br> error: ' . self::$_link -> error);
				return false;
			}

			return $ret;
		}

		/**
		 * Get userinformation via a user's username or user e-mail
		 * @param  array $username The username as it's stored in the database.
		 * @param  array $email    The user's e-mail address as it is stored in the database.
		 * @return array $ret      An array with the user information fetched from the database.
		 */
		public function getUserByUsernameOrEmail($username,$email = NULL)
		{
			$query = "SELECT `id`,`firstname`,`lastname`,`username`,`email`,`password`,`DoB`,`registered_at`,`active`,`dev`,`permissions`,`lang` FROM `table_users` WHERE `username` = ? OR `email` = ?";
			if($stmt = self::$_link->prepare($query))
			{
				if(!\api\Api::checkQuery($query))
					\core\access\Redirect::Home('Something went wrong with the query.');

				$stmt->bind_param('ss',$username,$email);
				$stmt->execute();
				$stmt->bind_result($id,$firstname,$lastname,$username,$email,$password,$dob,$registered_at,$active,$dev,$permissions,$lang);
				$stmt -> store_result();
				
				if($stmt -> num_rows > 0)
					while($row = $stmt -> fetch()){
						$ret = array($id,
							     'firstname'     => $firstname,
							     'lastname'      => $lastname,
							     'username'      => $username,
							     'email'         => $email,
							     'password'      => $password,
							     'dob'           => $dob,
	     						 'registered_at' => $registered_at,
							     'active'        => $active,
							     'dev'           => $dev,
	                             'permissions'   => $permissions,
							     'lang'          => $lang
						            );
					}
				else
				{
					$stmt -> close();
					\setNotice('Something went wrong fetching your username' . self::$_link -> error);
					return false;
				}

				$stmt->close();
			}
			else
			{
				\SetNotice('Could not fetch user.. <br> error: ' . self::$_link -> error);
				return false;
			}

			return $ret;
		}

		/**
		 * Get the currently logged in user's permissions.
		 * @return string  the level of permissions the user has.
		 */
		public function getUserpermissionsBySession()
		{
			$permissions = '';

			$query = "SELECT `permissions` FROM `table_users` WHERE CONCAT(firstname , ' ' , lastname) = ?";
			
			if($stmt = self::$_link->prepare($query))
			{
				if(!\api\Api::checkQuery($query))
					\core\access\Redirect::Home('Something went wrong with the query.');

				$stmt->bind_param('s',$_SESSION['login']);
				$stmt->execute();
				$stmt->bind_result($permissions);
				$stmt->fetch();
				$stmt->close();
			}
			else
			{
				\SetNotice('Could not fetch user perms.. <br> error: ' . self::$_link -> error);
				return false;
			}

			return (string)$permissions;
		}

		/**
		 * Honestly I can't remmeber what this function does, but if you ever get to read this documentation, please inform me from where it is called,
		 * what it does, and how it works as it select all ID's from ALL users.. NO IDEA where I got this idea from..
		 * @return boolean true on succesfull execution of the query
		 */
		public function checkTables()
		{
			$query = "SELECT `id` FROM `table_users`'";
			
			if(!\api\Api::checkQuery($query))
					\core\access\Redirect::Home('Something went wrong with the query.');

			if($stmt = self::$_link->query($query))
			{
				$stmt->close();
				return true;
			}
			else
			{
				\SetNotice('Could not check tables.. <br> error: ' . self::$_link -> error);
				return false;
			}
		}

		public function getUserLanguageBySession()
		{
			$query = "SELECT `lang` FROM `table_users` WHERE CONCAT(firstname , ' ' , lastname) = ?";

			if(!\api\Api::checkQuery($query))
					\core\access\Redirect::Home('Something went wrong with the query.');

			if($stmt = self::$_link->prepare($query))
			{
				$stmt->bind_param('s',$_SESSION['login']);
				$stmt->execute();
				$stmt->bind_result($lang);
				$stmt->fetch();
				$stmt->close();
			}
			else
			{
				\SetNotice('Could not fetch language.. <br> error: ' . self::$_link -> error);
				return false;
			}

			return !empty($lang) ? (string) $lang : '_EN';
		}
	}
