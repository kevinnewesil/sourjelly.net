<?php namespace controllers; if(!defined("DS")) die('no direct script access!');
 
        /**
        * @author  Kevin Newesil <kevin@sourjelly.net>
        * @version  1.0
        * @package  Controllers
        *
        */
        final class AFrameworks extends \core\system\Controller
        {
			
			/**
			 * Function to load main controller
			 */
            final public function __construct(){ 
            	parent::__construct();
            	unset($_SESSION['count']);
            }

            /**
             * Function to get basic class creation page
             */
            final public function index() { \sjHtml() -> assign('{content}',\Template('aframework/index.html.tpl')); }

            /**
             * Function to get an overview of all currently enabled classes.
             */
           	final public function overview()
           	{

           		$tmp  = \Template('aframework/overview.html.tpl');
           		$row  = \Template('aframework/overviewItems.html.tpl');
           		$rows = '';

           		$classes = \getApiCss() -> getAllClasses();

           		foreach($classes as $class)
           			$rows .= str_replace(
           				array('{className}','{classDescription}','{classTimestamp}'),
           				array($class['class'],$class['desc'],$class['created_at']),
           				$row
           			);

           		\sjHtml() -> assign('{content}', str_replace('{rows}',$rows,$tmp));
           	}

           	final public function create()
           	{
           		if($this -> _model -> create())
           			\Redirect('Class created','success');
           		else
           			\Redirect('Error');
           	}
        }