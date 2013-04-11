<?php
	
	/**
	 * @author  Kevin Newesil <newesil.kevin@gmail.com>
	 * @version 1.1
	 * @package config
	 * 
	 * This variable is a multi level array which has all the data used for connect to the database, settings up the working envoirment, and including external files etc.
	 * @var $config array Has all the data , BELIEVE IT. 
	 */
	return $config = array(

		'db' => array(

			'mysqli' => array(
				'host' => 'localhost',
				'user' => 'root',
				'pass' => 'root',
				'name' => 'cms',
				'port' => 3306,
			),

			'pdo' => array(
				'dsn' => 'msql:dbname=cms;host=127.0.0.1',
				'user' => 'sourjelly',
				'pass' => 'CjaxRsK9d39Twr4q',
			),

			'mssql' => array(
				'host' => 'localhost:3306',
				'user' => 'sourjelly',
				'pass' => 'CjaxRsK9d39Twr4q',
			),
		),

		'css' => array(
			'css' => 'style.css',
		),

		'js' => array(
			'js' => 'jquery.js',
		),

		'custom' => array(
			'example' => 'custom preference',
		),
	);
