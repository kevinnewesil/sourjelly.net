<?php namespace core\build; if(!defined("DS")) die('no direct script access');

	final class Install
	{
		protected $_password;
		protected $_email;

		protected $_registrationData;

		protected $_name;
		protected $_lastname;
		protected $_dob;

		protected $_activionKey;

		protected $_link;

		final public function __construct($email = NULL,$password = NULL, $name = NULL, $lastname = NULL, $dob = NULL, $cli = false)
		{
			$this -> _registrationData = date('Y-m-d H:i:s');

			$this -> _email = $email;
			$this -> _password = sha1($name . '-' . trim($password) . '-' . $this->_registrationData);
			$this -> _name = $name;
			$this -> _lastname = $lastname;
			$this -> _dob = $dob;

			$this -> _link = \core\build\Sourjelly::getConfig('link');

            if(!$cli)
            {
                $this -> _activionKey = sha1(time());
                $this -> save();
    			$this -> setSystemSettings();
    			$this -> setLayouts();
    			$this -> setContent();
    			$this -> sendMail();
            }
            else
                $this -> _activionKey = '1';

			if (PHP_SAPI !== 'cli')
			{
				$this->redirect();
			}
		}

		final public function save()
		{

			if($stmt = $this -> _link ->prepare("INSERT INTO `table_users` (`email`,`username`,`password`,`registered_at`,`firstname`,`lastname`,`DoB`,`active`,`permissions`,`dev`,`lang`) VALUES (?,?,?,?,?,?,?,?,2,0,'_EN')"))
			{
				$stmt->bind_param('ssssssss',$this->_email,$this->_email,$this->_password,$this->_registrationData,$this->_name, $this->_lastname, $this->_dob,$this->_activionKey);
				
				$stmt->execute();

				if($stmt->affected_rows == 1)
				{
                    $stmt->close();
					return true;
				}
				else
				{
                    die($this -> _link -> error);

					$stmt->close();
					return false;
				}
			}
            else
                die($this -> _link -> error);

			return false;
		}

		final private function sendMail()
		{
			$subject = "Confirming CMS registration";
			$message = wordwrap("To activate your CMS Systeem please click on the following link:". PHP_EOL);

			if(isset($_SERVER['SERVER_NAME']))
				$message .= $_SERVER['SERVER_NAME'] . "/index.php?activationKey=" . $this->_activationKey ;
			else
				$message .= 'Skip to step 2.';

			$message .= wordwrap(PHP_EOL . 
						" If you have this CMS installed on your local host. Please active by pasting this param after your index.php in your localhost folder:" . PHP_EOL . "
						?activationKey = " . $this->_activionKey . " For example http://localhost/CMS/public/index.php?activationKey=" . $this->_activionKey . PHP_EOL . "
						If this does not work, please contact the creater of this CMS;
						&copy; Kevin Newesil 2012;
					   ");

            if(mail($this->_email,$subject,$message))
                return true;
            else
                return false;
		}

		final private function checkMail()
		{

		}

		final private function redirect()
		{
			\core\access\Redirect::home('Succesfully installed!','success');
        }

        final private function setSystemSettings()
        {

        	$query = "SELECT * FROM `table_settings`";
        	
        	if($stmt = $this -> _link -> query($query))
        	{
        		if($stmt -> num_rows > 0)
        		{
        			$stmt -> close();
        			return false;
        		}

        		$stmt -> close();
        		
        	}
        	else
        		die($this -> _link -> error . 'line 115');

            $query = "INSERT INTO `table_settings` VALUES(NULL,'1','0','1','0','0','90','256','18','20','20','0','0','Europe/Amsterdam')";
            
            if($stmt = $this -> _link -> query($query))
            {
                if($this -> _link -> affected_rows === 1)
                    return true;
                else
                    die($this -> _link -> error . ' line 108');//return false;
            }
            else
            	die($this -> _link -> error . ' line 111');
        }

        final private function setContent()
        {
        	$query = "SELECT * FROM `table_content`";

        	if($stmt = $this -> _link -> query($query))
        	{
        		if($stmt -> num_rows > 0)
        		{
        			$stmt -> close();
        			return false;
        		}
        		$stmt -> close();
        	}

        	$query = "INSERT INTO `table_content` VALUES(NULL,'1','0','1','1','0','" . date("Y-m-d H:i:s") . "' ,'0000-00-00 00:00:00');";
        	$query .= "INSERT INTO `table_content_layout` VALUES(NULL,'1','left','1','left','16');";
        	$query .= "INSERT INTO `table_content_properties` VALUES(NULL,'1','Home','content','0','0','1','','','','');";
        	$query .= "INSERT INTO `table_content_roles` VALUES(NULL,'1','1');";

        	if($stmt = $this -> _link -> multi_query($query))
        	{
        		if($this -> _link -> affected_rows > 0)
        		{
        			$stmt -> close();
        			return true;
        		}
        		else
        			die($this -> _link -> error .'line 141');

        		$stmt -> close();
        	}
        	else
        		die($this -> _link -> error . 'line 146');

        	return false;

        }

        final private function setLayouts()
        {
        	$this -> setNavigation();
        }

        final private function setNavigation()
        {
        	$query = "SELECT * FROM `table_layout_navigation`";
        	
        	if($stmt = $this -> _link -> query($query))
        	{
        		if($stmt -> num_rows > 0)
        		{
        			$stmt -> close();
        			return false;
        		}

        		$stmt -> close();
        		
        	}
        	else
        		die($this -> _link -> error . 'line 175');

        	$query = "INSERT INTO `table_layout_navigation` VALUES(NULL,'1','0','0','top','toggle','ltr','text','Click','ltr')";

        	if($stmt = $this -> _link -> query($query))
        	{
        		if($this -> _link -> affected_rows === 1)
        			return true;
        		else
        			die($this -> _link -> error . 'line 184'); //return false;
        	}
        	else
        		die($this -> _link -> error . 'line 187');
        }
	}
