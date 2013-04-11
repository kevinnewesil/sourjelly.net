<?php namespace core\access; if(!defined("DS")) die('no direct script access!');

	/**
	 * @author Kevin Newesil <newesil.kevin@gmail.com>
	 * @version 1.1.0.0
	 *
	 * @param $_premissions an array with all the premissions data of the folders of the system saved in.
	 */
	class System
	{
		protected $_premissions = array();

		/**
		 * Calls for all functions within this class, as this class is a sort of before filter for an administrator.
		 */
		public function __construct()
		{
			//$this -> setFolderPremissions();
			//$this -> setDecimalPremission();
			//$this -> checkDecimalPremission();
		}

		/**
		 * A list of all folders, going through the getPremissions function one by one.
		 */
		protected function setFolderPremissions()
		{
			$this -> _premissions[API_PATH]        = $this -> getPremissions(API_PATH);
			$this -> _premissions[CONFIG_PATH]     = $this -> getPremissions(CONFIG_PATH);
			$this -> _premissions[CONTROLLER_PATH] = $this -> getPremissions(CONTROLLER_PATH) ;
			$this -> _premissions[CORE_PATH]       = $this -> getPremissions(CORE_PATH) ;
			$this -> _premissions[DB_PATH]         = $this -> getPremissions(DB_PATH) ;
			$this -> _premissions[MODEL_PATH]      = $this -> getPremissions(MODEL_PATH) ;
			$this -> _premissions[PUBLIC_PATH]     = $this -> getPremissions(PUBLIC_PATH) ;
			$this -> _premissions[TMP_PATH]        = $this -> getPremissions(TMP_PATH) ;
			$this -> _premissions[VIEWS_PATH]      = $this -> getPremissions(VIEWS_PATH) ;

		}

		/**
		 * this function gets the premission of the file, and renders it into readable language.
		 * @param  string $path the path to the file/folder that should be checked for it's premissions.
		 * @return string       return a string with the folder/file premission data.
		 */
		protected function getPremissions($path)
		{

			if(!is_dir($path) || !file_exists($path))
			{
				$_SESSION['system_warning'] = true;
				\core\access\Redirect::Home("The file or folder you wanted premission for does not exists");
			}
			
			$perms = fileperms($path);

			// Get the type of which the premission is going to be checked;
			
			if (($perms & 0xC000) == 0xC000)
			    $info = 's';
			elseif (($perms & 0xA000) == 0xA000)    
			    $info = 'l';
			elseif (($perms & 0x8000) == 0x8000)
			    $info = '-';
			elseif (($perms & 0x6000) == 0x6000)
			    $info = 'b';
			elseif (($perms & 0x4000) == 0x4000)
			    $info = 'd';
			elseif (($perms & 0x2000) == 0x2000)
			    $info = 'c'; 
			elseif (($perms & 0x1000) == 0x1000)
			    $info = 'p'; 
			else
			    $info = 'u';
			
			// Owner
			$owner = (($perms & 0x0100) ? 'r' : '-');
			$owner .= (($perms & 0x0080) ? 'w' : '-');
			$owner .= (($perms & 0x0040) ?
			            (($perms & 0x0800) ? 's' : 'x' ) :
			            (($perms & 0x0800) ? 'S' : '-'));

			// Group
			$group = (($perms & 0x0020) ? 'r' : '-');
			$group .= (($perms & 0x0010) ? 'w' : '-');
			$group .= (($perms & 0x0008) ?
			            (($perms & 0x0400) ? 's' : 'x' ) :
			            (($perms & 0x0400) ? 'S' : '-'));

			// World
			$world = (($perms & 0x0004) ? 'r' : '-');
			$world .= (($perms & 0x0002) ? 'w' : '-');
			$world .= (($perms & 0x0001) ?
			            (($perms & 0x0200) ? 't' : 'x' ) :
			            (($perms & 0x0200) ? 'T' : '-'));

			return ($info . '/' . $owner . '/' . $group . '/' . $world);
			
		}

		/**
		 * Gets the written premissons of a file/folder, and makes them into a numeric premission string.
		 * This function also checks what type the premission check is for, and extends the premissions array with that data.
		 */
		protected function setDecimalPremission()
		{
			foreach($this -> _premissions as $path => $premission)
			{
				$type  = $premission[0];
				$roles = explode('/' , substr($premission, 2));
				$line  = '';

				switch ($type) {
					case 's':
						$typeDescription = 'Socket';
						break;
					case 'l':
						$typeDescription = 'Symbolic Link';
						break;
					case '-':
						$typeDescription = 'Regular';
						break;
					case 'b':
						$typeDescription = 'Block special';
						break;
					case 'd':
						$typeDescription = 'Directory';
						break;
					case 'c':
						$typeDescription = 'Character special';
						break;
					case 'p':
						$typeDescription = 'FIFO pipe';
						break;
					case 'u':
						$typeDescription = 'unknown';
						break;
				}

				foreach($roles as $role)
				{
					switch($role)
					{
						case '---':
							$dec = 0;
							break;

						case '--x':
							$dec = 1;
							break;

						case '-w-':
							$dec = 2;
							break;

						case '-wx':
							$dec = 3;
							break;

						case 'r--':
							$dec = 4;
							break;

						case 'r-x':
							$dec = 5;
							break;

						case 'rw-':
							$dec = 6;
							break;

						case 'rwx':
							$dec = 7;
							break;
					}

					$line .= $dec;
				}

				$this -> _premissions[$path] = array(
					'premission' => $type . $roles[0]  . $roles[1] . $roles[2],
					'decimal'    => (int)$line,
					'type'       => $typeDescription,
				);
			}

		}

		/**
		 * This function checks if the system is compatable with the settings of the files and folders, if not it sends a message to the administrator.
		 */
		protected function checkDecimalPremission()
		{
			foreach($this -> _premissions as $folder => $premission)
				if($premission['decimal'] < 600 )
				{
					$_SESSION['system_warning'] = true;
					\core\access\Redirect::Home("The folder : '" . $folder ."' Doesn't have the right premission to work with. Please adjust it.");
				}

		}
	}
