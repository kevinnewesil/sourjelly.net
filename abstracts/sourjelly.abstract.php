<?php namespace abstracts; if(!defined("DS")) die('no direct script access');

	abstract class Sourjelly_Abstract
	{
		// Protected static variables that have the objects of the system core.
		protected static $_config;
		protected static $_api;
		protected static $_db;
		protected static $_secure;
		// Protected static variables that contain the code to build the pages for users/visitors.
		protected static $_al;
		protected static $_wv;
		// Protected static variables to set the rest of the views and settings.
		protected static $_settings;
		protected static $_html;

		abstract public function __construct($ajax = false);
		abstract public function __clone();

		abstract protected function startSourjelly();
		abstract protected function callClasses();
		abstract protected function beforeLoad();
		abstract protected function callFunctions();
	}