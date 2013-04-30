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
	final class Autoloader
	{
		protected $_parts = array();
		protected $_paths = array();
		protected $_class = array();
		protected $_ns    = NULL;

		protected $_get   = NULL;
		
		/**
		 * __construct()
		 * @var $url array An array of the full url , splitted by the index file.
		 * @var $this->parts array An array with the get attributes, including class name and class function for parsing.
		 * The autoloader construct makes a clean array of the class that needs to be called to access the proper class.
		 */
		final public function __construct()
		{
			// Read the url and explode on index.php
			$url = explode('index.php/',$_SERVER['REQUEST_URI']);
			$this -> _get = \Get();

			// Check if controller is in url
			if(isset($url[1]) && $url[1] != '')
			{
				// Here is where the fun begins.
				$fun = explode('/',$url[1]);

				// Check if authentication request is made, and check for shortened url
				if($fun[0] == 'auth' && !isset($fun[1]) || $fun[1] == '')
				{
					header('location:' . HOME_PATH . '/auth/login/?ns=access&path=access_path&login=login');
					exit();
				}

				// Explode the parts on / , basically the same as $fun..
				$this->_parts = explode('/',$url[1]);

				// Start the autoloader.
				$this->Autoload();
			}else
				// Load the index page.
				$this->buildIndex();
		}
		
		/**
		 * IncludeClass()
		 * @var $incpath string the path to the file where the class is in.
		 * @return boolean , include the class file and check if the include has worked.
		 * The IncludeClass function makes the path to the class a beautiful string to read for the include function and parses this.
		 * so that the Sourjelly of include can be returned.
		 */		
		final private function IncludeClass()
		{	
			// Return if file could be included or not.
			return include(constant(strtoupper($this -> _get -> path)) . $this->_parts[0] . '.class.php');
		}
		
		/**
		 * Autoload()
		 * @param $rawpaths string the path to the class(needs to be splitted for the Namespace variable)
		 * @var $paths array an array of @param $rawpaths
		 * @var $this->ns string a beautiful parse of the namespace env.
		 * @var $class string the full path to the class, @var $this->ns + @var $this->parts
		 * This Autoload function calls for the IncludeClass function and sets the new class as variable with the name the same as the class.
		 */
		final public function Autoload()
		{
			// Check if everything is actually defined.
			if($this->_parts == NULL)
				\core\access\Redirect::Home('Directory sould be provided!');
			
			// Check if class could be included, if not redirect with message and render index.
			if($this->IncludeClass() !== 1) \core\access\Redirect::Home('Class does not exist. check if your link is still valid!');

			// check if namespace could be fetched, if namespace couldn't be fetched fuck the system.
			if(!isset($this -> _get -> ns) || $this -> _get -> ns == '') \core\access\Redirect::Home('No namespace defined');
			$this->_ns = constant(strtoupper($this -> _get -> ns));

			// Define the classname including the namespace.
			$class = $this -> _ns . '\\' . $this->_parts[0];

			// Load the class.
			$this->_class[$this->_parts[0]] = new $class;

			// If controller function is set, load the function otherwhise just execute the construct of the function
			isset($this->_parts[1]) ? $this->AutoFunction(): '';
		}

		/**
		 * AutoFunction
		 * @var $params array All values that should be parsed into the called function.
		 * @return $funcOutput The returned output of the called function
		 * This AutoFunction function calls for the function in the class that has the code that needs to be excecuted.
		 * Example url: index.php/auth/register << calls for class Auth function Register.
		 */
		final public function AutoFunction()
		{	
			// check if function name is actually defined..
			!isset($this->_parts[1]) ? \core\access\Redirect::Home('No function found to excute in class.') : '';
			// Check if a class is defined to call the function in
			$this->_class == NULL ? \core\access\Redirect::Home('No class defined. Please use the Autoload function before using the Autofunction.') : '' ;

			// get the valid class object
			$class = $this->_class[$this->_parts[0]];
			$function = $this->_parts[1];

			// Check if function requires parameters from url such as an ID
			if(isset($this->_parts[3]))
			{
				// Create an array with every parameter
				foreach($this->_parts as $key => $getElement)
					($key != 0 || $key != 1) ? $params[] = $getElement : '';

				// Call the function within the class with the rights parameters
				$class->$function($params);
			}
			else
				// Call the function within the class without parameters.
				$class->$function();
		}

		/**
		 * [buildIndex description]
		 * @return [type] [description]
		 */
		final public function buildIndex()
		{
			// Assign the index page to the content area in the html via the html base class.
			\core\build\Sourjelly::getHtml()->Assign('{content}',\core\build\Template::getTemplate('index.html.tpl'));
		}

		/**
		 * Getter functions for access to protected class variables.
		 */
		final public function GetParts()
		{
			return $this->parts;
		}
		final public function GetPaths()
		{
			return $this->paths;
		}
		final public function getClass()
		{
			return $this->class;
		}
		final public function GetNs()
		{
			return $this->ns;
		}
	}
