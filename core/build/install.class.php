<?php namespace core\build; if(!defined("DS")) die('no direct script access');

	class Install
	{
		protected $_password;
		protected $_email;

		protected $_registrationData;

		protected $_name;
		protected $_lastname;
		protected $_dob;

		protected $_activionKey;

		public function __construct($email = NULL,$password = NULL, $name = NULL, $lastname = NULL, $dob = NULL)
		{
			$this->_registrationData = date('Y-m-d H:i:s');

			$this->_email = $email;
			$this->_password = sha1(trim($name) . '-' . trim($password) . '-' . trim($this->_registrationData));
			$this->_name = $name;
			$this->_lastname = $lastname;
			$this->_dob = $dob;
			$this->_activionKey = sha1(time());

			$this->save();

			if (PHP_SAPI !== 'cli')
			{
				$this->redirect();
			}
		}

		private function save()
		{

			$link = \core\build\Sourjelly::getConfig('link');

			if($stmt = $link->prepare("INSERT INTO `table_users` (`email`,`username`,`password`,`registered_at`,`firstname`,`lastname`,`DoB`,`active`,`permissions`) VALUES (?,?,?,?,?,?,?,?,2)"))
			{
				$stmt->bind_param('ssssssss',$this->_email,$this->_email,$this->_password,$this->_time,$this->_name, $this->_lastname, $this->_dob,$this->_activionKey);
				$stmt->execute();
				if($stmt->affected_rows == 1)
				{
                    $stmt->close();
                    if($this->setSystemSettings() && $this -> sendMail())
					    return true;
                    else
                        return false;
				}
				else
				{
					$stmt->close();
					return false;
				}
			}
		}

		private function sendMail()
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

		private function checkMail()
		{

		}

		private function redirect()
		{
			\core\access\Redirect::home('Succesfully installed!','success');
        }

        private function setSystemSettings()
        {
            $link = \core\build\Sourjelly::getConfig('link');
            $query = "INSERT INTO `table_settings` VALUES('','1','0','1','0','0','90','256','18','20','20','0','0','Europe/Amsterdam')";
            
            if($stmt = $link -> query($query))
            {
                if($stmt -> affected_rows === 1)
                    return true;
                else
                    return false;
            }
        }
	}
