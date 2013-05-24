<?php namespace tests; if(!defined("DS")) die('no direct script access');

	class Sourjelly_Tests
	{

		protected $_errorCount = 0;
		protected $_link = NULL;
		protected $_class = NULL;

		public function start()
		{
			// Preset variables

			// Set testing data
			$_POST['email']    = 'testuser@sourjelly.net';
			$_POST['password'] = 'dummyPassword';
			$_POST['login']    = 'login';

			// Load all test functions
			sleep(2);
			$this -> requireFiles();
			
			sleep(2);
			$this -> loadClasses();

			sleep(2);
			$this -> testParams();

			sleep(2);
			$this -> testUser();

			sleep(2);
			$this -> reloadSourjellyFunctions();

			sleep(2);
			$this -> destroyTestUser();

			sleep(2);
			echo PHP_EOL . \core\colourString("Counting numbers of errors" , "blue");

			for ($i=0; $i < 4; $i++) { 
				echo \core\colourString("." , "blue");
				sleep(1);
			}

			sleep(1);
			echo \core\colourString(" " . $this -> _errorCount . " error(s) found... " . PHP_EOL , "blue");

			sleep(1);
			echo \core\colourString("Sourjelly test ran successfully... " . PHP_EOL ,"green");
		}

		private function requireFiles()
		{
			echo PHP_EOL . 'Loading config files... ';

			if(!file_exists('config/const.config.php'))
			{
				++$this -> _errorCount;
				echo  \core\colourString("Could not load config file... ","red");
			}
			else
				echo \core\colourString("Config file loaded","green");
			
			echo PHP_EOL . 'Loading Sourjelly.class.php file...';

			if(!file_exists('core/build/sourjelly.class.php'))
			{
				++$this -> _errorCount;
				echo \core\colourString("Could not load Sourjelly.class.php... ", "red");
			}
			else
				echo \core\colourString("Sourjelly class loaded","green");
		}

		private function loadClasses()
		{
			echo PHP_EOL . 'Loading sourjelly class... ';

			if(!class_exists("\\core\\build\\Sourjelly"))
			{
				++$this -> _errorCount;
				echo \core\colourString("Could not find sourjelly class... ","red") . PHP_EOL;
			}
			else
				echo \core\colourString("Sourjelly class found..." ,"green") . PHP_EOL . 'Starting new class intialisation... ';

			if(!$this -> _class = new \core\build\Sourjelly)
			{
				++$this -> _errorCount;
				echo \core\colourString("Could not initialise Sourjelly class... ","red") . PHP_EOL;
			}
			else
				echo \core\colourString("Sourjelly class initialised","green") . PHP_EOL;

		}

		private function testParams()
		{
			echo PHP_EOL . 'Testing objects... ';

			if(!is_object(\SjConfig()))
			{
				++$this -> _errorCount;
				echo \core\colourString("Could not load config class via sourjelly","red") . PHP_EOL;
			}
			else
				echo \core\colourString("Config class loaded" , "green") . PHP_EOL . ".................. ";

			if(!is_object(\SjApi()))
			{
				++$this -> _errorCount;
				echo \core\colourString("Could not load Api class via sourjelly" ,"red") . PHP_EOL . ".................. ";
			}
			else
				echo \core\colourString("API class loaded" , "green") . PHP_EOL . ".................. ";

			if(!is_object(\SjDb()))
			{
				++$this -> _errorCount;
				echo \core\colourString("Could not load Database class via sourjelly" ,"red") . PHP_EOL . PHP_EOL;
			}
			else
				echo \core\colourString("Database class loaded" , "green") . PHP_EOL . PHP_EOL;

			echo "Testing Autoloader and Webview objects without login session being set... " . PHP_EOL;

			if(is_object($this -> _class -> getAl()))
			{
				++$this -> _errorCount;
				echo \core\colourString("Loaded autoloader without login session being set","red") . PHP_EOL;
			}
			else
				echo \core\colourString("Successfully ingored autoloader" , "green") . PHP_EOL;

			if($this -> _class -> checkForLogin(array('','')))
			{
				++$this -> _errorCount;
				echo \core\colourString("Could not load Webview class, no HTML initialised.", "red") . PHP_EOL;
			}
			else
				echo \core\colourString("Webview class succesfully loaded","green"). PHP_EOL;

			echo "Creating link to mysql database... ";

			if(!$this -> _link = \core\build\Sourjelly::getConfig('link'))
			{
				++$this -> _errorCount;
				echo \core\colourString("Could not load Link to database.", "red") . PHP_EOL;
			}
			else
				echo \core\colourString("Link to database created succesfully","green"). PHP_EOL;
		}

		private function testUser()
		{
			$this -> createUser();
			sleep(2);
			$this -> testLoginSession();
		}

		private function createUser()
		{

			echo PHP_EOL . 'Creating test user... ';

			require('core/build/install.class.php');

			$email     = "testuser@sourjelly.net";
			$name      = "Test";
			$lastname  = "User";
			$dob       = "2000-01-01";
			$password  = "dummyPassword";

			if(!$install = new \core\build\Install($email,$password,$name,$lastname,$dob,true))
			{
				++$this -> _errorCount;
				echo \core\colourString("Error creating installer","red") . PHP_EOL;
			}
			else
				echo \core\colourString("Installer succesfully started","green") . PHP_EOL;

			echo 'Saving test user into database... ';

			if(!$install -> save())
			{
				++$this -> _errorCount;
				echo \core\colourString("Error creating test user","red") . PHP_EOL;
			}
			else
				echo \core\colourString("Test user succesfully created","green") . PHP_EOL;
		}

		private function testLoginSession()
		{
			require('core/access/auth.class.php');

			echo 'Initialising Auth class... ';

			$auth = new \core\access\Auth;

			if(!$auth -> login(true))
			{
				++$this -> _errorCount;
				echo \core\colourString("Error creating authentication","red") . PHP_EOL;
			}
			else
				echo \core\colourString("Auth class succesfully initalised","green") . PHP_EOL;

			echo 'Reading login session... ';

			if(!isset($_SESSION['login']))
			{
				++$this -> _errorCount;
				echo \core\colourString("Error reading authentication session","red") . PHP_EOL;
			}
			else
				echo \core\colourString("Authentication session successfully created","green") . PHP_EOL;

			echo 'checking session data... ';

			if($_SESSION['login'] != "Test User")
			{
				++$this -> _errorCount;
				echo \core\colourString("Authentication data parsed wrong","red") . PHP_EOL;
			}
			else
				echo \core\colourString("Authentication successfull","green") . PHP_EOL;
		}

		private function destroyTestUser()
		{
			$query = "DELETE FROM `table_users` WHERE `username` = ?";
			$user  = "testuser@sourjelly.net";

			echo PHP_EOL . 'Preparing query... ';

			if(!$stmt = $this -> _link -> prepare($query))
			{
				++$this -> _errorCount;
				echo \core\colourString("Could not prepare query","red") . PHP_EOL;
				return false;
			}
			else
				echo \core\colourString("Statement prepared succesfully","green") . PHP_EOL;

			echo 'Binding params... ';

			if(!$stmt -> bind_param("s",&$user))
			{
				++$this -> _errorCount;
				echo \core\colourString("Could not bind parameters to query","red") . PHP_EOL;
				return false;
			}
			else
				echo \core\colourString("Parameters bound to statement succesfully","green") . PHP_EOL;

			$stmt -> execute();

			echo 'Deleting test user... ';

			if($stmt -> affected_rows != 1)
			{
				++$this -> _errorCount;
				echo \core\colourString("Could not delete test user","red") . PHP_EOL;
				return false;
			}
			else
				echo \core\colourString("Test user successfully deleted","green") . PHP_EOL;
		}

		private function reloadSourjellyFunctions()
		{
			echo PHP_EOL . 'Reloading sourjelly... ';

			if(!$this -> _class -> callClasses())
			{
				++$this -> _errorCount;
				echo \core\colourString("Could not reload sourjelly","red") . PHP_EOL;
			}
			else
				echo \core\colourString("Sourjelly reloaded successfully","green") . PHP_EOL;

			echo 'Testing Sourjelly user premissions... ';

			if(!$this -> _class -> checkForLogin(NULL))
			{
				++$this -> errorCount;
				echo \core\colourString("Could not load user premission","red") . PHP_EOL;
			}
			else
				echo \core\colourString("User premissions set correctly","green") . PHP_EOL;
		}
	}