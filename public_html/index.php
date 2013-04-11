<?php
	/**
	 * @author Kevin Newesil <newesil.kevin@gmail.com>
	 * @version 1.1.0.0
	 * 
	 * @todo thighten up security
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
	 * @todo @bug fucking zombie fucking session, in the fucking admin fucking panel, which comes, when it can't include a controller < which is wierd cause it should redirect, but it doesn't instead it just sets a wierd fuckign session, that is UNTRACABLE AND UNDELETEABLE. IF YOU WANT TO CONTRIBUTE AND HELP ME OUT FIXING THIS WIERD ASS MOTHERFUCKING BUG PLEASE BE MY GUEST, MY REWARD WILL BE GREAT I PROMISE!
	 * @todo @bug zombie session in autoloader includeClass function..
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
	
	// build the html!
	\core\build\Sourjelly::getHtml()->Build();

