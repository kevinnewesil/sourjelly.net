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
		}
	}
