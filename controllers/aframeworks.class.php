<?php namespace controllers; if(!defined("DS")) die('no direct script access!');
 
        /**
        * @author  Kevin Newesil <kevin@sourjelly.net>
        * @version  1.0
        * @package  Controllers
        *
        */
        final class AFrameworks extends \core\system\Controller
        {
 
                final public function __construct()
                {
                        parent::__construct();
                }
 
                final public function index() { \sjHtml() -> assign('{content}',\Template('aframework/index.html.tpl')); }
 
               	final public function overview()
               	{
               		\sjHtml() -> assign('{content}', \Template('aframework/overview.html.tpl'));

               		// $classes = \getApiCss() -> getAllClasses();
               	}
        }