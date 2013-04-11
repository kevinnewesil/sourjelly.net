<?php namespace core\build;

	/** 
	* @author  kevin newesil <kevinnewesil@hotmail.nl>
	* @version  1.0 
	* @package  default
	* 
	* @var $parts array array with atrributes that include the class name and function that need to be used
	* @var $paths array array with the paths that lead to the class. needs to be seperated for @var $ns
	* @var $ns string, the namespace path to the class.
	* @var $class array Name of the class that has to be auto loaded and the object of the class.
	* @todo custom error message for not existing file.
	*/
	class Autoloader
	{
		protected $_parts = array();
		protected $_paths = array();
		protected $_class = array();
		protected $_ns    = NULL;
		
		/**
		 * __construct()
		 * @var $url array An array of the full url , splitted by the index file.
		 * @var $this->parts array An array with the get attributes, including class name and class function for parsing.
		 * The autoloader construct makes a clean array of the class that needs to be called to access the proper class.
		 */
		public function __construct()
		{
			
			$url = explode('index.php/',$_SERVER['REQUEST_URI']);
			
			if(isset($url[1]) && $url[1] != '')
			{
				$fun = explode('/',$url[1]);
				if($fun[0] == 'admin' && $fun[1] == '')
				{
					header('location:' . HOME_PATH . '/admin/index/?ns=controllers&path=controller_path');
					exit();
				}
				$this->_parts = explode('/',$url[1]);
				$this->Autoload();
			}else{
				$this->buildIndex();
			}	
		}
		
		/**
		 * IncludeClass()
		 * @var $incpath string the path to the file where the class is in.
		 * @return boolean , include the class file and check if the include has worked.
		 * The IncludeClass function makes the path to the class a beautiful string to read for the include function and parses this.
		 * so that the Sourjelly of include can be returned.
		 */		
		private function IncludeClass()
		{	
			return include(constant(strtoupper($_GET['path'])) . $this->_parts[0] . '.class.php');
		}
		
		/**
		 * Autoload()
		 * @param $rawpaths string the path to the class(needs to be splitted for the Namespace variable)
		 * @var $paths array an array of @param $rawpaths
		 * @var $this->ns string a beautiful parse of the namespace env.
		 * @var $class string the full path to the class, @var $this->ns + @var $this->parts
		 * This Autoload function calls for the IncludeClass function and sets the new class as variable with the name the same as the class.
		 */
		public function Autoload()
		{
			if($this->_parts == NULL)
			{
				\core\access\Redirect::Home('Directory sould be provided!');
			}
			
			// ZOMBIEEEE SESSIONNNNNNS?????!!!!!!!! HELP HEEEEEEELP HEEEEELPPPPPPP MEEEEEE! :( NO ARGGGGGGHHHHHHHHHH 
			if($this->IncludeClass() !== 1) \core\access\Redirect::Home('Class does not exist. check if your link is still valid!');

			if(!isset($_GET['ns']) || $_GET['ns'] == '') \core\access\Redirect::Home('No namespace defined');
			$this->_ns = constant(strtoupper($_GET['ns']));

			$class = constant(strtoupper($_GET['ns'])) . '\\' . $this->_parts[0];

			$this->_class[$this->_parts[0]] = new $class;

			isset($this->_parts[1]) ? $this->AutoFunction(): '';
		}

		/**
		 * AutoFunction
		 * @var $params array All values that should be parsed into the called function.
		 * @return $funcOutput The returned output of the called function
		 * This AutoFunction function calls for the function in the class that has the code that needs to be excecuted.
		 * Example url: index.php/auth/register << calls for class Auth function Register.
		 */
		public function AutoFunction()
		{		
			!isset($this->_parts[1]) ? \core\access\Redirect::Home('No function found to excute in class.') : '';
			$this->_class == NULL ? \core\access\Redirect::Home('No class defined. Please use the Autoload function before using the Autofunction.') : '' ;

			$class = $this->_class[$this->_parts[0]];
			$function = $this->_parts[1];

			if(isset($this->_parts[3]))
			{
				foreach($this->_parts as $key => $getElement)
				{
					($key != 0 || $key != 1) ? $params[] = $getElement : '';
				}

				$class->$function($params);
			}
			else
			{
				$class->$function();
			}
		}

		/**
		 * [buildIndex description]
		 * @return [type] [description]
		 */
		public function buildIndex()
		{
			$tmp = \core\build\Template::getTemplate('index.html.tpl');
			
			\core\build\Sourjelly::getHtml()->Assign('{content}',$tmp);
		}

		/**
		 * Getter functions for access to protected class variables.
		 */
		public function GetParts()
		{
			return $this->parts;
		}
		public function GetPaths()
		{
			return $this->paths;
		}
		public function getClass()
		{
			return $this->class;
		}
		public function GetNs()
		{
			return $this->ns;
		}
	}
