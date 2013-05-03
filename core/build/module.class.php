<?php namespace core\build; if(!defined("DS")) die('no direct script access');

	/**
	 * @author Kevin Newesil <newesil.kevin@gmail.com>
	 * @version 1.1.0.0
	 * 
	 * @param $_includeClean a list of all modules that should be includes, cleaned up and parsed.
	 */
	final class Modules
	{

		protected $_includeClean = array();

		/**
		 * parses if any module is called for, and includes the module.
		 * @param [type] $modules [description]
		 */
		public function __construct($modules)
		{
			if(!empty($modules))
				if(!is_array($modules))
					\core\access\Redirect::home('No proper modules defined.');

			foreach($modules as $module)
			{
				$name = strtolower($module['title']);
				$position = strtolower($module['position']);

				$includeInc = file_get_contents(MODULES_PATH . $name . DS . 'include.inc');
				$includesRaw = explode(PHP_EOL,$includeInc);

				foreach($includesRaw as $includeRaw)
				{
					if(strstr($includeRaw, 'include:'))
					{
						$this->_includeClean[] = str_replace(array('include: ','MODULES_PATH'),array('',MODULES_PATH),$includeRaw);
					}
				}
			}
		}

		/**
		 * Uses the code from the module to get a clean html page, to render to the user.
		 */
		final public function getHtml()
		{	
			if(!empty($this->_includeClean))
			{
				foreach($this->_includeClean as $includeFile)
				{
					require($includeFile);
				}

				if(is_array($content))
					$content = implode('<br>', $content);

				\core\build\Sourjelly::getHtml()->assign('{moduleHtml}',$content);
			}
			else
			{
				\core\build\Sourjelly::getHtml()->assign('{moduleHtml}','');
			}
		}

		/**
		 * [getSettings description]
		 * @return [type] [description]
		 */
		final public function getSettings()
		{
			return 'settings';
		}

		/**
		 * [saveSettings description]
		 * @return [type] [description]
		 */
		final public function saveSettings()
		{
			
		}
	}
