<?php

	/*
	...........................Sour Jelly...........................
	..____................____.Sour Jelly.____................____..
	.(....\............../....)Sour Jelly(....\............../....).
	..\....\........... /..../.Sour Jelly.\....\............/..../.. 
	...\....\........../..../..Sour Jelly..\....\........../..../...
	....\..../´¯·|·¯`\/..../...Sour Jelly...\..../´¯·|·¯`\...../....
	..../....|....|..(¯¯¯`\....Sour Jelly..../´¯¯¯)..|....|....\....
	...|.....|....|...¯¯.\.....Sour Jelly...../.¯¯...|....|.....|...
	...|....|´¯.|´¯.|..\.).....Sour Jelly.....(./..|.¯`|.¯`|....|...
	....\.....`.¯..¯.´...'.....Sour Jelly.....'...`.¯..¯.´...../....
	.....\____________.·´......Sour Jelly......`·.____________/.....
	...........................Sour Jelly...........................
	*/

	/**
	 * @author Kevin Newesil <newesil.kevin@gmail.com>
	 * @version 1.1.0.0
	 * 
	 * @todo Write propper error display for API insert into, and update table.
	 * @todo timezone interperter.
	 * @todo add page author 
	 * @todo thighten up security
	 * 
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
	 * @todo make dummy rows for tables in database for making sure the system won't crash on new install
	 * @todo make extra security against updates via javascript 
	 * 	     | -> On first ajax request, parse password, and create session.
	 * 	     | -> On leave page destroy the password security session.
	 * 
	 * --BUGFIXES--
	 * 
	 * 
	 * --EXTRA--
	 * 
	 * @todo  Write exampled for each class functions to show the usage.
	 * @todo  Write actual documentation INSIDE the functions of the classes.
	 * @todo  Rewrite modules and crud controllers/models, so that they make use of the base Controller and base Model classes.
	 * @todo  Rewrite the API classes so that the link is set via the config file and not via the api classes.
	 * @todo add final keyword to final classes and functions
	 *
	 */

	// Define the start time of the script, for measurement of script render time.
	DEFINE("START_TIME", microtime());

	// Simply start a session. -> no further explination needed I suppose...
	session_start();
	
	// Require config file which defines basic paths etc. & require the Sourjelly class !
	require('../config/const.config.php');

	require(CORE_PATH . 'require.php');
	
	// time to start the system...
	new \core\build\Sourjelly;
