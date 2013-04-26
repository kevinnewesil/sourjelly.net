<?php namespace core\system; if(!defined("DS")) die('no direct script access!');
	
	/**
	 * @author  kevin Newesil <newesil.kevin@gmail.com>
	 * @version  1.0
	 * 
	 * @param $_model The object of the model that belongs to the controller.
	 * Main controller class, requires the model via the name of the controller
	 */
	class Controller
	{
		protected $_model;

		protected static $_post;

		/**
		 * gets the name of the controller via the url, and cleanes it up, so that it can include, and start the model that belongs to the controller.
		 */
		public function __construct()
		{
			$controller_child = explode('\\',get_class($this));
			$model_name_raw   = $controller_child[count($controller_child)-1];
			$model_name_clean = ($model_name_raw[strlen($model_name_raw)-1] === 's') ? substr($model_name_raw, 0, strlen($model_name_raw)-1) : $model_name_raw;
			$namespaced_model = MODELS . '\\' . $model_name_clean;

			if(file_exists(MODEL_PATH . strtolower($model_name_clean) . '.class.php'))
				require(MODEL_PATH . strtolower($model_name_clean) . '.class.php');
			else
				\core\access\Redirect::Home('No Model found matching this controller..','error');

			$this->_model = new $namespaced_model;

			$this -> _post = \Post();
		}

		/**
		 * protected function that splits the URL to check if there's a numeric part in the url, which can be used as the ID of a page for
		 * retrieving, updating, deleting, and undo deleting.
		 * @return boolean true if the url part is numeric and in the right position, false otherwhise
		 */
		protected function checkId()
		{
			$rawUrl = explode('/index.php/',$_SERVER['REQUEST_URI']);
			$parts = explode('/',$rawUrl[1]);

			if(is_numeric($parts[2]))
				return $parts[2];
			else
				return false;
		}
	}
