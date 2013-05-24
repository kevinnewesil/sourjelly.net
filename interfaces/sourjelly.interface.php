<?php namespace interfaces; if(!defined("DS")) die('no direct script access');

	interface Sourjelly_Interface{

		/**
		 * 
		 */
		public static function callTo($var, $function, $params);

		/**
		 * 
		 */
		public static function getConfig($param = NULL);
		//
		public static function getApi($param = NULL);
		//
		public static function getHtml($param = NULL);
		//
		public static function getDb($param = NULL);

		/**
		 * 
		 */
		public static function getGet();
		//
		public static function getPost();

		/**
		 * 
		 */
		public static function loadCompilers($name);
	}