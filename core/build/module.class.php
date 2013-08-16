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

		protected static $_downloadUri = NULL;

		/**
		 * parses if any module is called for, and includes the module.
		 * @param [type] $modules [description]
		 */
		public function __construct($modules = NULL)
		{

			$this -> _downloadUri = "http://sourjelly.net/assets/files/modules/";

			if($modules == NULL)
				return false;
			
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
		final public function getHtml($pageId)
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
				\core\build\Sourjelly::getHtml()->assign('{pageId}',\core\Helpers::getPageTitleFromPageId($pageId));
			}
			else
			{
				\core\build\Sourjelly::getHtml()->assign('{moduleHtml}','');
			}
		}

		final public function runInstaller($filename)
		{
			if(!class_exists("\\models\\Modules"))
				require_once(MODEL_PATH . 'module.class.php');

			require(MODULES_PATH . $filename . DS . 'installer/installer.php');
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

		final public static function getModulesViaSourjelly($modulesIncluded)
		{
			$model = new \models\Module;

			if(isset($modulesIncluded) && is_array($modulesIncluded))
			{
				foreach($modulesIncluded as $include)
				{
					$downloadLink = 'Http://sourjelly.net/assets/files/modules/' . $include['name'] . '.' . $include['ext'];
					$destination = MODULES_PATH . $include['name'] . '.' . $include['ext'];

					$ch = curl_init();

					curl_setopt($ch, CURLOPT_URL, $downloadLink);
					curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

					if(!$data = curl_exec($ch))
						die(curl_error($ch));

					curl_close($ch);

					$file = fopen($destination, "w+");
					fputs($file, $data);
					fclose($file);

					$files = array(
						'file' => array(
							'name' 	   => $include['name'] . '.' . $include['ext'],
							'type' 	   => $include['ext'],
							'tmp_name' => $destination,
						),
					);

					$model -> upload($files);
				}
			}
		}
	}
