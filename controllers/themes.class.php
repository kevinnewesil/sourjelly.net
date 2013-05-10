<?php namespace controllers; if(!defined("DS")) die('no direct script access!');

	/**
	* @author  Kevin Newesil <newesil.kevin@gmail.com>
	* @version  1.0
	* @package  default
	*
	*/
	class Themes extends \core\system\Controller
	{

		/**
		 * Calls for the Main controller to execute the common functions etc.
		 */
		public function __construct()
		{
			parent::__construct();
		}

		/**
		 * Build up an overview of all created themes.
		 */
		public function index()
		{
			$tmp = \core\build\Template::getTemplate('theme/index.html.tpl');
			$tmpRows = \core\build\Template::getTemplate('theme/indexRows.html.tpl');
			$placeholders = array('{title}','{active}','{id}');
			$rows = '';

			$themes = \api\Api::getThemes() -> getThemeNamesAndActivity();

			if(!empty($themes))
				foreach($themes as $theme)
				{
					$theme['active'] = $theme['active'] == '1' ? 'yes' : 'no';
					$rows .= str_replace($placeholders, $theme, $tmpRows);
				}

			$tmp = str_replace('{rows}',$rows,$tmp);

			\core\build\Sourjelly::getHtml()->assign('{content}',$tmp);
		}

		/**
		 * gets the html for creating a new theme... That is all.
		 */
		public function newTheme()
		{
			\core\build\Sourjelly::getHtml()->assign('{content}',\core\build\Template::getTemplate('theme/newTheme.html.tpl'));
		}

		/**
		 * This function is a little bit difficult, as it parses between approx 150 and 200 POST values.
		 * These values are used to replace the variables in the public/assets/css/variables.less and places them in 
		 * public/assets/css/themes/{themename}.less. It also opens the Theme.less file, and changes it. so that
		 * the New theme is always selected. It also makes the post keys and post values a large string, imploded on special assigned characters
		 * These characters are used later on so that the placeholders in the template for updating a theme will be filled in with the current theme data.
		 */
		public function create()
		{
			unset($this -> _post -> submit);
			$themeName = $this -> _post -> themeName;
			unset($this -> _post -> themeName);

			foreach($this -> _post as $key => $value)
				$themeData[$key] = stripslashes(stripslashes($value));

			$placeholders = array_keys($themeData);
			$replacers    = array_values($themeData);

			foreach($placeholders as $key => $values)
				$placeholders[$key] = "{" . trim($values) . "}";

			$themeVariables = str_replace($placeholders, $replacers, file_get_contents($_SERVER['DOCUMENT_ROOT'] . CSS_PATH . 'variables.less'));

			if(file_exists($_SERVER['DOCUMENT_ROOT'] . CSS_PATH . 'themes/' . $themeName . '.less'))
				\core\access\Redirect::home('Theme name allready exists');

			$path = $_SERVER['DOCUMENT_ROOT'] . CSS_PATH . 'themes/' . $themeName . '.less';

			$fh = fopen($path, 'w');

			fwrite($fh, $themeVariables);
			fclose($fh);

			$fh = fopen($_SERVER['DOCUMENT_ROOT'] .  CSS_PATH . 'theme.less','w');

			fwrite($fh, '@import "themes/' . $themeName . '"; ' . PHP_EOL . \core\build\Template::getSnippet('theme.layout.less','less'));
			fclose($fh);

			$post = implode('=' , array(implode('~' ,array_keys($themeData)) ,implode('~',array_merge(array('themeName' => $themeName),$themeData))));
			
			\api\Api::updateTable('table_themes',array('active'),array('0'),array('active' => '1'));

			if(\api\Api::insertInto('table_themes',array('themeName','active','post','deprecated'),array($themeName,'1',$post,'0'),'sisi'))
				\core\access\Redirect::to(HOME_PATH . '/themes/newTheme/?ns=controllers&path=controller_path','Theme created!','success');
			else
				\core\access\Redirect::to(HOME_PATH . '/themes/newTheme/?ns=controllers&path=controller_path','Error creating theme');
		}

		/**
		 * This function is yet to be build.
		 */
		public function upload()
		{

		}

		/**
		 * This function checks first of all if the user has posted an update for the theme, if not it renders the theme that the user wants to update.
		 * @see  postUpdate()
		 * If the user hasn't done a post request, the function renders the theme, and fetches the post string from the database, explodes the post string
		 * on the special assigned chars @see create(). 
		 */
		public function update()
		{
			if(isset($this -> _post -> submit))
				if($this -> postUpdate())
					\core\access\redirect::Refresh("theme updated succesfully");
				else
					\core\access\Redirect::Refresh("Error updating theme");

			$tmp = \core\build\Template::getTemplate('theme/update.html.tpl');
			$rawUrl = explode('/index.php/',$_SERVER['REQUEST_URI']);
			$parts = explode('/',$rawUrl[1]);

			$themeInfo = \api\Api::getThemes() -> getThemeById($parts[2]);
			$themePostInfo = explode('=',$themeInfo['post']);

			$placeholders = array_merge(array('id','themeName') , explode('~',$themePostInfo[0]));

			foreach ($placeholders as $key => $placeholder) {
				$placeholders[$key] = '{' . $placeholder . '}';
			}

			$replacers = array_merge(array($themeInfo['id']), explode('~' , $themePostInfo[1])); 

			$tmp = str_replace($placeholders,$replacers,$tmp);

			\core\build\Sourjelly::getHtml()->assign('{content}',$tmp);
		}

		/**
		 * This function actually overwrites a theme, and re-saves every value. it does exactly the same as the create theme function
		 * the only difference is, is that the values are overwritten and not created new.
		 * @return [type] [description]
		 */
		private function postUpdate()
		{
			unset($this -> _post -> submit);
			$themeName = $this -> _post -> themeName;
			unset($this -> _post -> themeName);

			foreach($this -> _post as $key => $value)
				$themeData[$key] = stripslashes(stripslashes($value));

			$placeholders = array_keys($themeData);
			$replacers    = array_values($themeData);

			$placeholders = array_keys($themeData);

			foreach($placeholders as $key => $values)
				$placeholders[$key] = "{" . trim($values) . "}";

			$replacers = array_values($themeData);

			$themeVariables = str_replace($placeholders, $replacers, file_get_contents($_SERVER['DOCUMENT_ROOT'] . CSS_PATH . 'variables.less'));

			$path = $_SERVER['DOCUMENT_ROOT'] . CSS_PATH . 'themes/' . $themeName . '.less';
			$fh = fopen($path, 'w');
			fwrite($fh, $themeVariables);
			fclose($fh);

			$fh = fopen($_SERVER['DOCUMENT_ROOT'] . CSS_PATH . 'theme.less','w');

			fwrite($fh, '@import "themes/' . $themeName . '"; ' . PHP_EOL . \core\build\Template::getSnippet('theme.layout.less','less'));
			fclose($fh);

			$post = implode('=' , array(implode('~' ,array_keys($themeData)) ,implode('~',array_merge(array('themeName' => $themeName),$themeData))));

			\api\Api::updateTable('table_themes',array('active'),array('0'),array('active' => '1'));

			if(\api\Api::updateTable('table_themes',array('themeName','active','post'),array($themeName,'1',$post),array('id' => $id)))
				\core\access\Redirect::to(HOME_PATH . '/themes/update/' . $id . '/?ns=controllers&path=controller_path','Theme updated!','success');
			else
				\core\access\Redirect::to(HOME_PATH . '/themes/update/' . $id . '/?ns=controllers&path=controller_path','Error updating theme');
		}

		public function delete()
		{
			if($this->_model->delete())
				\core\access\Redirect::To(HOME_PATH . '/themes/index/?ns=controllers&path=controller_path','Theme deleted succesfully','success');
			else
				\core\access\Redirect::To(HOME_PATH . '/themes/index/?ns=controllers&path=controller_path','Something went wrong deleting the theme');
		}

	}
