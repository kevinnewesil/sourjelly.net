<?php namespace core\access; if(!defined("DS")) die('no direct script access!');

	/**
	 * @author Kevin Newesil <newesil.kevin@gmail.com>
	 * @version 1.1.0.0
	 *
	 * @param $_permissionss an array with all the permissionss data of the folders of the system saved in.
	 */
	final class System
	{
		protected $_permissionss = array();

		/**
		 * Calls for all functions within this class, as this class is a sort of before filter for an administrator.
		 */
		final public function __construct()
		{
			//$this -> setFolderpermissionss();
			//$this -> setDecimalpermissions();
			//$this -> checkDecimalpermissions();
		}

		/**
		 * A list of all folders, going through the getpermissionss function one by one.
		 */
		final protected function setFolderpermissionss()
		{
			$this -> _permissionss[API_PATH]        = $this -> getpermissionss(API_PATH);
			$this -> _permissionss[CONFIG_PATH]     = $this -> getpermissionss(CONFIG_PATH);
			$this -> _permissionss[CONTROLLER_PATH] = $this -> getpermissionss(CONTROLLER_PATH) ;
			$this -> _permissionss[CORE_PATH]       = $this -> getpermissionss(CORE_PATH) ;
			$this -> _permissionss[DB_PATH]         = $this -> getpermissionss(DB_PATH) ;
			$this -> _permissionss[MODEL_PATH]      = $this -> getpermissionss(MODEL_PATH) ;
			$this -> _permissionss[PUBLIC_PATH]     = $this -> getpermissionss(PUBLIC_PATH) ;
			$this -> _permissionss[TMP_PATH]        = $this -> getpermissionss(TMP_PATH) ;
			$this -> _permissionss[VIEWS_PATH]      = $this -> getpermissionss(VIEWS_PATH) ;

		}

		/**
		 * this function gets the permissions of the file, and renders it into readable language.
		 * @param  string $path the path to the file/folder that should be checked for it's permissionss.
		 * @return string       return a string with the folder/file permissions data.
		 */
		final protected function getpermissionss($path)
		{

			if(!is_dir($path) || !file_exists($path))
			{
				$_SESSION['system_warning'] = true;
				\core\access\Redirect::Home("The file or folder you wanted permissions for does not exists");
			}
			
			$perms = fileperms($path);

			// Get the type of which the permissions is going to be checked;
			
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
		 * Gets the written premissons of a file/folder, and makes them into a numeric permissions string.
		 * This function also checks what type the permissions check is for, and extends the permissionss array with that data.
		 */
		final protected function setDecimalpermissions()
		{
			foreach($this -> _permissionss as $path => $permissions)
			{
				$type  = $permissions[0];
				$roles = explode('/' , substr($permissions, 2));
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

				$this -> _permissionss[$path] = array(
					'permissions' => $type . $roles[0]  . $roles[1] . $roles[2],
					'decimal'    => (int)$line,
					'type'       => $typeDescription,
				);
			}

		}

		/**
		 * This function checks if the system is compatable with the settings of the files and folders, if not it sends a message to the administrator.
		 */
		final protected function checkDecimalpermissions()
		{
			foreach($this -> _permissionss as $folder => $permissions)
				if($permissions['decimal'] < 600 )
				{
					$_SESSION['system_warning'] = true;
					\core\access\Redirect::Home("The folder : '" . $folder ."' Doesn't have the right permissions to work with. Please adjust it.");
				}

		}
	}
