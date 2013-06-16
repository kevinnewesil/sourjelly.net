<?php namespace controllers;

	/**
	* @author  Kevin Newesil <newesil.kevin@gmail.com>
	* @version  1.0
	* @package  default
	*
	* @var $_model @deprecated
	*/
	class Modules
	{

		protected $_model;

		/**
		 * @deprecated This whole function is...
		 */
		public function __construct()
		{
			require_once(MODEL_PATH . 'module.class.php');
			$this->_model = new \models\Module;
		}
		
		/**
		 * [new description]
		 * @return [type] [description]
		 */
		public function newModule()
		{
			$this -> _model -> create();
			\To(HOME_PATH . "modules/create/?ns=controllers&path=controller_path");
		}

		/**
		 * Calls the html and renders is for an admin to create a module.
		 * Checks if there's a file already being uploaded and sends it to the upload function. @see  $this -> upload();
		 */
		public function create()
		{

			if(isset($_FILES['file']) && !empty($_FILES['file']['name']))
				$this -> _model -> upload();
			else if(\Post() !== false)
				$this -> _model -> viaUrl();

			$page = \core\build\Template::getTemplate('module/index.html.tpl');
			\core\build\Sourjelly::getHtml()->assign('{content}',$page);
		}

		/**
		 * Renders the html with an overview of all non deprecated modules in the system. such as the nivo slider.
		 * Which is obviously build by non other then ME! @author Kevin Newesil <newesil.kevin@gmail.com>
		 */
		public function overview()
		{
			$rows = '';

			$mainTmp      = "";
			$rowsTmp      = \core\build\Template::getTemplate('module/tablerow.html.tpl');
			$modules 	  = \Api\Api::getModules() -> getAllModules();
			$placeholders = array('{name}','{description}','{uploaded_at}','{match}','{position}','{active}','{id}');

			if(empty($modules))
				\setNoticeNoModules('We have not detected any installed modules, we advise you to download some in our awesome community!');
			else
			{
				$mainTmp = \core\build\Template::getTemplate('module/overview.html.tpl');

				foreach($modules as $module)
				{
					if(isset($module['active']) && $module['active'] == 1)
						$module['active'] = 'Yes';
					else
						$module['active'] = 'No';

					$replacers = array($module['title'],$module['description'],$module['created_at'], $module['pages'],$module['position'],$module['active'],$module['id']);
					$rows .= str_replace($placeholders, $replacers ,$rowsTmp);
				}

				$mainTmp = str_replace('{rows}',$rows,$mainTmp);
			}

			\core\build\Sourjelly::getHtml()->assign('{content}',$mainTmp);
		}

		/**
		 * Gets the settings of an installed module, so the user can adjust the modules settings! obviously, and renders this in the HTML...
		 * @return boolean if there are no modules to render, this function returns false somehow.
		 */
		public function settings()
		{
			$moduleId = $this->checkId();
			$module = \api\Api::getModules() -> getModuleById($moduleId);

			if(!$settings = include(MODULES_PATH . $module[0][0] . '/code/settings.php'))
			{
				\core\build\Sourjelly::getHtml() -> assign('{content}',"Couldn't find Settings file in module folder.");
				return false;
			}

			\core\build\Sourjelly::getHtml() -> assign('{content}',$settings);

		}

		/**
		 * Calls the modules model and updates the database. Sets deprecated to 1 on the right module.
		 */
		public function delete()
		{
			if(!$this->checkId())
				$this->retrieve();
			else
				if($this->_model->delete())
					\core\access\Redirect::to(HOME_PATH . '/modules/overview/?ns=controllers&path=controller_path', 'Module succefully deleted','success');
				else
					\core\access\Redirect::to(HOME_PATH . '/modules/overview/?ns=controllers&path=controller_path', 'Error deleting the module');
		}

		/**
		 * This function fetches all deleted modules, and puts them in a template, so that the user can always put them back..
		 */
		public function deleted()
		{
			$rows = '';

			$tmp 		  = \core\build\Template::getTemplate('module/deleted.html.tpl');
			$rowsTmp	  = \core\build\Template::getTemplate('module/deletedRows.html.tpl');
			$modules 	  = \Api\Api::getModules() -> getAllDeprecatedModules();
			$placeholders = array('{name}','{description}','{uploaded_at}','{match}','{position}','{active}','{id}');

			foreach($modules as $module)
			{
				if(isset($module[5]) && $module[5] === 1)
					$module[5] = 'Yes';
				else
					$module[5] = 'No';

				$rows .= str_replace($placeholders, array($module[0],$module[1],$module[2],$module[3],$module[4],$module[5],$module[6]) ,$rowsTmp);
			}

			$tmp = str_replace('{rows}',$rows,$tmp);

			\core\build\Sourjelly::getHtml() -> assign('{content}',$tmp);
		}

		/**
		 * This function checks if the ID of the module actually is an ID.
		 * @return  boolean Return true on numeric value , return false otherwhise
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
