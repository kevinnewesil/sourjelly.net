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
            final public function __construct(){ parent::__construct(); }

            /**
             * Function to get basic class creation page
             */
            final public function index() { \sjHtml() -> assign('{content}',\Template('aframework/index.html.tpl')); }

            /**
             * Function to get an overview of all currently enabled classes.
             */
           	final public function overview()
           	{
           		\sjHtml() -> assign('{content}', \Template('aframework/overview.html.tpl'));

           		$classes = \getApiCss() -> getAllClasses();

           		die(var_dump($classes));
           	}
        }