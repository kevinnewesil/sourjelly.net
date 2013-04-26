<?php
	/**
	 * @author Kevin Newesil <newesil.kevin@gmail.com>
	 * @version 1.1.0.0
	 * 
	 * @todo Make post en get only available via Sourjelly class...
	 * @todo Write propper error display for API insert into, and update table.
	 * @todo timezone interperter.
	 * @todo thighten up security
	 * @todo move getId from controller function to main controller function.
	 * @todo clean up messy code
	 * @todo !important Write documentation in code
	 * @todo !important Write web interface user documentation.
	 * @todo !important Re-Write deprecated controllers & models, using the controller & model class instead of other shit.
	 * 
	 * @todo installer via web..
	 * @todo easier migrations when creating new models, especially via CLI..
	 * 
	 * @todo Make pdo work...
	 * 
	 * @todo write everything in English.
	 * @todo base setup for multilangual.
	 * 
	 * --BUGFIXES--
	 * 
	 * @todo @bug proper redirect after false login.
	 * 
	 * --EXTRA--
	 * @todo  Write exampled for each class functions to show the usage.
	 * @todo  Write actual documentation INSIDE the functions of the classes.
	 * @todo  Rewrite modules and crud controllers/models, so that they make use of the base Controller and base Model classes.
	 * @todo  Rewrite the API classes so that the link is set via the config file and not via the api classes.
	 *
	 */

	// Define the start time of the script, for measurement of script render time.
	DEFINE("START_TIME", microtime());

	// Simply start a session. -> no further explination needed I suppose...
	session_start();
	
	// Require config file which defines basic paths etc. & require the Sourjelly class !
	require('../config/const.config.php');
	require(BUILD_PATH . 'sourjelly.class.php');
	
	// time to start the system...
	new \core\build\Sourjelly;
