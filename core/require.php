<?php

	// Require the core files of the system.
	// Sour jelly's back bone
	require(CONFIG_PATH . 'config.class.php');
	require(CDB_PATH . 'databaseBase.class.php');
	require(CORE_PATH . 'helpers.php');

	require(ACCESS_PATH . 'system.class.php');
	require(ACCESS_PATH . 'redirect.class.php');
	require(ACCESS_PATH . 'request.class.php');
	require(ACCESS_PATH . 'secure.class.php');

	require(BUILD_PATH . 'autoloader.class.php');
	require(BUILD_PATH . 'template.class.php');
	require(BUILD_PATH . 'htmlBase.class.php');
	require(BUILD_PATH . 'module.class.php');
	require(BUILD_PATH . 'webview.class.php');

	require(SYSTEM_PATH . 'controller.class.php');
	require(SYSTEM_PATH . 'model.class.php');
	require(SYSTEM_PATH . 'simpleLoader.php');

	// Require Local API files for usage in API class.
	require(API_PATH . 'local/pages.api.class.php');
	require(API_PATH . 'local/users.api.class.php');
	require(API_PATH . 'local/themes.api.class.php');
	require(API_PATH . 'local/layout.api.class.php');
	require(API_PATH . 'local/modules.api.class.php');
	require(API_PATH . 'local/settings.api.class.php');

	require(API_PATH . 'api.class.php');

	// Require social media APIs
	require(API_PATH . 'facebook/facebook.class.php');
	require(API_PATH . 'google/google.class.php');

	require(INTERFACE_PATH . 'sourjelly.interface.php');
	require(ABSTRACTS_PATH . 'sourjelly.abstract.php');
	require(BUILD_PATH . 'sourjelly.class.php');
	