<?php

	# This is the installer for the portfolio module of Sourjelly.
	# All content and data inside this module belong to Sourjelly and are shareware.
	# This means that all Modules have a price connected to them.

	# Note that the migration script in de root folder is executed automatically by the systeem, and therefor will not be included in the installer.

	# happy use of this module.

	# Team Sourjelly &copy;

	# Start installer code

	# Load and parse all pending modules belonging to this.

	$modulesIncluded = array(
		array('name' => 'newsfeed', 'ext' => 'zip'),
		array('name' => 'contact_form', 'ext' => 'zip'),
	);

	\core\build\Modules::getModulesViaSourjelly($modulesIncluded);

	if(!class_exists("\\models\\Crud"))
		require(MODEL_PATH . 'crud.class.php');

	$page   = new \models\crud;

	$page -> createPageQuick('contact','Contact page');
	$page -> createPageQuick('news','newspage');

	if(!class_exists("\\models\\Module"))
		require(MODEL_PATH . 'module.class.php');

	$module = new \models\Module;

	\getApiModules() -> activateModuleByPageTitle('contact_form','contact');
	\getApiModules() -> activateModuleByPageTitle('newsfeed','news');