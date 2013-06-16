<noscript>
	<br>
	<p class="alert">
		This system is build on Javascript, and you have it disabled. Please enable javascript to continue working with this system.
	</p>
</noscript>

<!-- Hier moe een toeltip komme -->
<a href="#documentation" data-toggle="modal" title="Documentation">
	<img src="{assets}/img/bubble.png" alt="Documentation">
</a>


<div id="documentation" class="modal hide fade">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		<h3>Modal header</h3>
	</div>

	<div class="modal-body">
		
		<div class="tabbable"> <!-- Only required for left/right tabs -->
			

			<ul class="nav nav-tabs">
				<li class="active"><a href="#usage" data-toggle="tab" title="Usage">Usage</a></li>
				<li><a href="#tab2" data-toggle="tab">Section 2</a></li>
			</ul>
			

			<div class="tab-content">
				<div class="tab-pane active" id="usage">
					
					<div id="usage">

						

						<h2> <a id="basicUsage" title="Basic usage">Basic usage</a> </h2>
							<p>
								The basic usage of Sourjelly is no different than any other CMS system, even though the way of using it differs from the 
								rest.
								The normal basic actions are standard embedded into the system, and extends can be added as modules. read the 
								documentation below to get
								to know everything about it.
								<br>
								Html pages can be build via the 'pages' tab, content can be added, menus can be created, submenus, and menu orderes can 
								be decided. 
								<br>
								Adding modules is as simple as click &amp; drag. After trying it a few times,adding and configuring modules will be 
								piece of a cake.
								<br>
								SourJelly CMS also has it's own build-in; Twitter bootstrap based; theme-editor. Which are explained in the screencasts 
								that you can find
								On the original website of <a href="http://www.sourjelly.net/">Sourjelly.</a>
								<br>
								If you're still having troubles working with SourJelly CMS, Don't worry, we're allready setting up a massive community 
								and creating a form and FaQ
								Where all the questions you have will be answered.
							</p>
						<h2> <a id="advancedUsage" title="Advanced usage">Advanced usage</a> </h2>
							<p>
								If you're more familair with HTML and CSS you can edit the pages to your own wishes.
								The main layout of all visitor pages is stored in in the /views/layouts folders under main.html.tpl.
								<br>
								All the html have twitter bootstrap classes, which makes it easier to add custom CSS.
								We added a file, in the public/assets/css folder, which is called custom.css this file can be used to add custom CSS 
								rules which you can't add
								via the theme editor, or want completly different.
								<br>
								SourJelly CMS also has an embedded HTML feauture in which you can add lines of text which will be converted into valid 
								HTML code.
								<br> A list of supported embedded HTML and the translation from the compiler.
								<ul class="no-style">
									<li>&#123;&#123; link_to =&gt; pagetitle &#125;&#125; -&gt; created a hyperlink to the page for visitors.</li>
									<li>
										&#123;&#123; link_to =&gt; pagetitle , class =&gt; tagclass , id =&gt; tagid &#125;&#125; -&gt; 
										All embedded html can have all the normal html attributes, which will be
										translated via the compiler into valid HTML rules -&gt; class = "tagclass" id = "tagid" etc. 
									</li>
								</ul>
								You can give up to 4 attributes with an element at the same time!
							</p>
						<hr>
					</div>

				</div>
				
				<div class="tab-pane" id="tab2">
					<p>Howdy, I'm in Section 2.</p>
				</div>
			</div>
		</div>

	</div>

	<div class="modal-footer">
		<a href="#" class="btn">Close</a>
	</div>			
</div>



<!-- 
<br>
	<div class="affix-menu">
		<ul class="well nav nav-list span3" style="max-width:40%;">
			<li class="nav-header">Documentation</li>
			<li>
				<a class="nav-header">Usage</a>
				<ul class="nav nav-list">
					<li><a href="#basicUsage" title="Basic Usage">Basic usage</a></li>
					<li><a href="#advancedUsage" title="Advanced Usage">Advanced Usage</a></li>
				</ul>
			</li>
			<li>
				<a href="#paginas" class="nav-header">Pages</a>
				<ul class="nav nav-list">
					<li><a href="#PaginaMaken">Create page</a></li>
					<li><a href="#PaginaOverzicht">Page overview</a></li>
					<li><a href="#PaginaBewerken">Edit page</a></li>
					<li><a href="#PaginaVerwijderen">Delete page</a></li>
					<li><a href="#MenuVolgorde">Menu order</a></li>
					<li><a href="#VerwijderdePaginas">deleted pages</a></li>
				</ul>
			</li>
			<li class="divider"></li>
			<li>
				<a class="nav-header" href="#modules">Modules</a>
				<ul class="nav nav-list">
					<li class="dropdown">
						<a href="#gebruik">usage of modules</a> 
						<ul class="nav nav-list">
							<li>
								<a href="#installeren">installation</a> 
								<ul class="nav nav-list">
									<li><a href="#url">Via url</a></li>
									<li><a href="#upload">Via upload</a></li>
									<li><a href="#handmatig">manual</a></li>
								</ul>
							</li>
						</ul>
					</li>
					<li><a href="#overzicht">overview</a></li>
					<li><a href="#instellingen">settings</a></li>
					<li class="developerOption">
						<a href="#devGuide">Developers guide</a> 
						<ul class="nav nav-list">
							<li><a href="#structuur">Folder structure</a></li>
							<li>
								<a href="#paden">Paths</a> 
								<ul class="nav nav-list">
									<li><a href="#html/javascript">Via html/Javascript</a></li>
									<li><a href="#php">Via php</a></li>
								</ul>
							</li>
							<li><a href="#include.inc">Include.inc</a></li>
						</ul>
					</li>
				</ul>
			</li>

			<li class="divider"></li>
			<li><a class="nav-header" href="#themas">Themes</a></li>

			<li class="divider"></li>
			<li><a class="nav-header" href="#account">Account</a></li>

			<li class="divider"></li>
			<li><a class="nav-header" href="#settings">Settings</a></li>

			<li class="divider developerOption"></li>
			<li><a class="nav-header developerOption" href="#folders">Folders</a></li>

			<li class="divider developerOption"></li>
			<li class="developerOption">
				<a class="nav-header" href="#classes">Classes</a>
				<ul class="nav nav-list">
					<li>
						<a href="#core"> Core classes</a>
						<ul class="nav nav-list">
							<li>
								<a href="#access"> Access </a>
								<ul class="nav nav-list">
									<li>
										<a href="#auth"> Auth </a>
										<ul class="nav nav-list">
											<li><a href="#login"> Login </a></li>
											<li><a href="#getLogin"> getLogin </a></li>
											<li><a href="#postLogin"> postLogin </a></li>
											<li><a href="#logout"> logout </a></li>
										</ul>
									</li>
								</ul>
							</li>
							<li>
								<a href="build"> Build </a>
								<ul class="nav nav-list">
									
								</ul>
							</li>
							<li>
								<a href="database"> Database </a>
								<ul class="nav nav-list">
									
								</ul>
							</li>
						</ul>
					</li>
				</ul>
			</li>

			<li class="divider developerOption"></li>
			<li>
				<a class="nav-header developerOption" href="#folders">CLITool</a>
				<ul class="nav nav-list">
					<li><a href="#install">Install</a></li>
					<li><a href="#migrate">Migrate</a></li>
					<li><a href="#backupdb">BackupDb</a></li>
					<li><a href="#generate">generate</a></li>
				</ul>
			</li>

		</ul>
	</div>

<div class="content pull-right span8">
	

	<div id="paginas">
		<h2><a id="paginas">Pages</a></h2>
		<h3><a id="PaginaMaken">Create page.</a></h3>
		<p>
			One can select the menu item 'create page'. From here there's an overview with 3 fields. The title of the page ,
			The page the page belongs to (optional), And the content of the page. All of these values should be filled in in order to succesfully create a page.
		</p>

		<h3><a id="PaginaOverzicht">Pages overview</a></h3>
		<p>
			On the page 'pages overview' is a table with the data of all the created pages. This table is sortable on all fields. With the help of those fields one can easily
			determin which page belongs to which name, and if it is a main menu item or a submenu item. There are also multiple buttons on the side.
			The button with the tool in it leads to the edit page, of that page. The black icon with the trashbin in it, deletes the page.
		</p>

		<h3><a id="PaginaBewerken">Edit page</a></h3>
		<p>
			On the page 'edit page' ;called via <a href="#PagineOverzicht">Pages overview</a>; is a simulair form as on the create page, page. The difference is that on this page the
			data of the page will be edited instead of creating a new page. It is possible to change the menu status of the page, the title of the page, and the contents of the page.
		</p>

		<h3><a id="PaginaVerwijderen">Delete page</a></h3>
		<p>
			If one desides to delete a page, the page will be set to non-active. The visitors won't be able to see this page. And in the pages overview, the page will not be
			visible anymore. This page will then only be available via the 'deleted pages' option found in the navigation under `pages`
		</p>

		<h3><a id="MenuVolgorde">Menu order</a></h3>
		<p>
			On this page is an overview with all the pages that one created via 'SourJelly CMS'. one is able to click on those items and drag them in the right order.
			Once one cliks the button update order, the pages will be saved in that order, and visitors of the website will see the pages in that order.
		</p>

		<h3><a id="VerwijderdePaginas">Deleted pages</a></h3>
		<p>
			On this page is a list of all pages one has deleted. Via this one can undo a delete with a simple click on the undelete check mark behind a row in the table.
		</p>

	</div>
	<hr>
	<div id="modules">

		<h2>Modules</h2>

		<span class="gebruik">

			<h3><a id="gebruik">Usage of modules</a></h3>

			<span class="installeren">
				<h4> <a id="installeren">Installation</a></h4>
				<p>
					Installing a module is possible via three diffent ways. All of the three ways; as named below; work in the same manner, the only difference is that one may find
					one method easier to apply than another, which is the main reason that there are multiple ways to install a module into the system.
				</p>
				<h5><a id="url">Via url</a></h5>
				<p>
					One can chose to upload a module via a download link. This link is a link of the location where the module is.
				</p>
				<h5><a id="upload">Via upload</a></h5>
				<p>
					One can chose to upload a module via their locale systems. The module should be compressed, and have an extension like .rar or .zip.
				</p>
				<h5><a id="handmatig">Manual</a></h5>
				<p>
					One can chose to manually install a module. In the folder of this system is a folder called 'modules'. When you have a folder of the module, you can copy &amp; 
					paste it into that folder.
					The folder should have 3 folders names: 'assets','code', and 'html'. and one file names ' include.inc'.
				</p>
			</span>
			<hr>

			<span class="overzicht">
				<h3><a id="overzicht">Overview</a></h3>
				<p>
					In the module overview, is a table with data of all installed modules. from here it's possible to activate/deactive modules, connect modules to pages, 
					and delete modules. If you delete the module it will just not be visible anymore, but the data of the module will still exists.
					Keep in mind that if one decides to delete a module, and activates it again, the module will also be visible again on the visitors web interface.
				</p>
			</span>
			<hr>

			<span class="instellingen">
				<h3><a id="instellingen">Settings</a></h3>
				<p>
					The settings of the modules are made by the people whom make the modules, the modules settings can differ per module. But they are always settings,
					that edit the way the module works.
				</p>
			</span>
			<hr>
		</span>

		<span class="developerOption">
			<h2><a id="devGuide">Developers Guide</a></h2>

			<span class="mappen">
				<h3>
					<a id="structuur">
						folder structure
					</a>
				</h3>
				<p>
					If one decides to develop a module, men should be kept to the struce that is given by 'SourJelly CMS'.
					The folder of the module is the same name as the module name, and in the folder of the module should be three folders;
					'html','code' and 'assets'.
					In the folder 'assets' can be the folders 'img','css' , and 'js'. in the folder 'code' the source code of the module will be placed.
					In the main folder of the module will be a file called  <a href="#include.inc">'include.inc'</a>.
				</p>
				<hr>
			</span>

			<span class="paden">
				<h3>
					<a id="paden">
						usage van paths
					</a>
				</h3>

				<h4><a id="html/javascript">Via html/javascript</a></h4>
				<p>
					In the code of SourJelly CMS, a few placeholders will be automatically be replaced. To make a path inside the html to include files
					you can use placeholders. the placeholders will be text placed between {}.
					To create a link to one's module the placeholders { modules } is used. (without spaces). <br>
					a link to for exapmle a folder inside assets will look like this: <br>
					{ modules }/came_of_module/assets/subfolder/filename.extension <br>
					Eg: {modules}/slider/assets/js/slider.js

				</p>

				<h4><a id="php">Via php</a></h4>
				<p class="alert">
					<button type="button" class="close" data-dismiss="alert">&times;</button>
					Pay extra attention with usage of the core classes. Please read the documentation of the core classes extra carefully.
					Only write code in those classes if you really HAVE no other choise. If you want to access the database please use the API class.
					Read the documentation about the API class extra carefully when doing this.
				</p>
				<p>
					Via php there are a few constants that are available. The constants are defined and all have a dynamic path to ones destination. <br>
					List of constants:
					<ol>
						<li>HOME_PATH &raquo; Link naar hoofdpagina</li>
						
						<li>AJAX_PATH &raquo; <a href="#ajaxFolder">Ajax folder</a></li>
						<li>ASSETS_PATH &raquo; <a href="#assetsFolder">Assets folder</a></li>
						<li>CSS_PATH &raquo; <a href="#cssFolder"> Css folder</a> </li>
						<li>JS_PATH &raquo; <a href="#jsFolder"> Javascript folder</a> </li>
						<li>IMG_PATH &raquo; <a href="#imagefolder"> Image folder</a> </li>
						<li>CONFIG_PATH &raquo; <a href="#configFolder"> Config folder</a></li>
						<li>CORE_PATH &raquo; <a href="#coreFolder">Core folder</a> </li>
						<li>DB_PATH &raquo; <a href="#dbFolder">Database folder</a> </li>
						<li>PUBLIC_PATH &raquo; <a href="#publicFolder">folder folder</a></li>
						<li>VIEWS_PATH &raquo; <a href="#viewsFolder">Views folder</a> </li>
						<li>MODULES_PATH &raquo; <a href="#modulesFolder">Modules folder</a></li>
						<li>CONTROLLER_PATH &raquo; <a href="#controllerFolder">Controller folder</a></li>
						<li>MODEL_PATH &raquo; <a href="#modelFolder">Model folder</a></li>
						<li>API_PATH &raquo; <a href="#apiFolder">API folder</a></li>
						<li>
							core
							<ul>
								<li>BASE_PATH &raquo; <a href="#baseCoreFolder">Base core folder</a> </li>
								<li>ACCESS_PATH &raquo; <a href="#accessCoreFolder">Access core folder</a> </li>
								<li>BUILD_PATH &raquo; <a href="#buildCoreFolder">Build core folder</a> </li>
								<li>CDB_PATH &raquo; <a href="#cbdFolder">Database core folder</a> </li>
							</ul>
						</li>
					</ol>
					Keep in mind that php can only send back 1 file to the module class which handles the requests of modules. this can be done as defined: <br>
					<code>$content = 'all content for the module';</code><br>
					the rest of the code will be dealed with automatically, and the <code>$content</code> will be placed in the Html automatically. and placed
					on pages that are connected to the module of choise.

					<br><br>

					<p class="alert alert-info">
						Make sure that in the php file that calls the module, and has html, always is a <code>$content</code> which renders and has the complete
						HTML of the module. So that the content will always be visible on the pages that are connected to the module and the visitors can use the module.
					</p>
				</p>
				<hr>
			</span>
		</span>

		<span class="include.inc">
			<h3>
				<a id="include.inc">
					Include.inc
				</a>
			</h3>
			<p>
				the 'include.inc' file in ones module is meant to load all neccessairy files.
				Example of an include.inc file: <br>
				<pre>
#All rights reservered Kevin Newesil &copy; 2013
# main includes:
include: MODULES_PATH/slider/code/imageLoader.php
include: MODULES_PATH/slider/code/imageSaver.php
# asset files includes via html as:
# { modules }/slider/assets/...
# end include file

				</pre>		
			</p>
		</span>
	</div>
	<hr>
	<div id="themas">
		<h2>Themes</h2>
		<p>
			
		</p>
	</div>
	<hr>
	<div id="account">
		<h2>Account</h2>
		<p>
			
		</p>
	</div>
	<hr>
	<div id="settings">
		<h2>Settings</h2>
		<p>
			
		</p>
	</div>
	<hr>
	<div id="folders" class="developerOption">
		<h2> Folders </h2>
		<h3> <a id="mappenstructuur"> Folder structure </a> </h3>
		<p>
			CMS <br>
			&nbsp;|`- ajax <br>
			&nbsp;|`- api <br>
			&nbsp;|`- config <br>
			&nbsp;|`- controllers <br>
			&nbsp;|`- core <br>
			&nbsp;|&nbsp; &nbsp; &nbsp;`- access <br>
			&nbsp;|&nbsp; &nbsp; &nbsp;`- build <br>
			&nbsp;|&nbsp; &nbsp; &nbsp;`- database <br>
			&nbsp;|`- database <br>
			&nbsp;|`- models <br>
			&nbsp;|`- modules <br>
			&nbsp;|&nbsp; &nbsp; &nbsp;`- {modules} <br>
			&nbsp;|`- public <br>
			&nbsp;|&nbsp; &nbsp; &nbsp;`- assets <br>
			&nbsp;|&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;`- css <br>
			&nbsp;|&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;`- img <br>
			&nbsp;|&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;`- js <br>
			&nbsp;|`- tmp <br>
			&nbsp;|&nbsp; &nbsp; &nbsp;`- backup <br>
			&nbsp;|&nbsp; &nbsp; &nbsp;`- cache <br>
			&nbsp;|&nbsp; &nbsp; &nbsp;`- logs <br>
			&nbsp;|&nbsp; &nbsp; &nbsp;`- sessions <br>
			&nbsp;|`- views <br>
			&nbsp;|&nbsp; &nbsp; &nbsp;`- layouts <br>
			&nbsp;|&nbsp; &nbsp; &nbsp;`- pages <br>
			&nbsp;|&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;`- Controllers <br>
			&nbsp;|&nbsp; &nbsp; &nbsp;`- snippets <br>
		</p>

		<h3><a id="ajaxFolder"> Ajax folder </a></h3>


		<h3><a id="apiFolder"> Api folder </a></h3>


		<h3><a id="configFolder"> Config folder </a></h3>


		<h3><a id="controllersFolder"> Controllers folder </a></h3>


		<h3><a id="coreFolder"> Core folder </a></h3>


		<h3><a id="databaseFolder"> Database folder </a></h3>


		<h3><a id="modelsFolder"> Models folder </a></h3>


		<h3><a id="modulesFolder"> Modules folder </a></h3>


		<h3><a id="publicFolder"> Public folder </a></h3>


		<h3><a id="tmpFolder"> Tmp folder </a></h3>


		<h3><a id="viewsFolder"> Views folder </a></h3>


	</div>
	<hr>
	<div id="classes" class="developerOption">
		<h2>Classes</h2>
		<p class="alert alert-info"> 
			Public -> accessable from everywhere -><br>
			<code> $Class -> function(); $class -> param; </code>
			<br><br>

			Private -> only accessable via the class itself. -><br>
			<code> $this -> function(); $this -> param; </code>
			<br><br>

			Protected ->Only accessable via the class itself, and parent and children classes. -><br>
			<code> $this -> function(); </code>
			<br><br>

			Static -> Can be called without creating a class object before hand. -> <br>
			<code>Class::function(); self::function(); Class::param; self::Param;</code>
			<br><br>
		</p>
		<span class="core">
			<h3> <a id="core">Core classes</a> </h3>
			<p>
				<h4> <a id="access"> Access </a> </h4>
					<p class="alert alert-info">Namespace : \core\access\</p>
					<h5> <a id="auth"> Auth </a> </h5>
						<p>
							Properties of the Auth class: <br>
							<div class="properties">
								<p class="muted"> <code> protected $_username; -> string</code> Username that is posted on registration.</p>
								<p class="muted"> <code> protected $_password; -> string</code> Password that is posted on registration. -> encrypted.</p>
								<p class="muted"> <code> protected $_email; -> string</code> E-mail which is used for validation.</p>
								<p class="muted"> <code> protected $_created_at; -> dateObject</code> Date/time when the user registered.</p>
								<p class="muted"> <code> protected $_name; -> string</code> Name of the registered user.</p>
								<p class="muted"> <code> protected $_link; -> Mysqli object</code> Link to the database. -> 
									<abbr title="Vanuit een oudere versie van het systeem" class="initialism">Deprecated</span> </p>
							</div>
						</p>
						<h6> <a id="login"> Login </a> </h6>
							<p>
								<strong>Public</strong> <br>
								This function Renders either post/getLogin function. (Pre restfull).
								Checks for a submit on a login form.
							</p>

						<h6> <a id="getLogin"> getLogin </a> </h6>
							<p>
								<strong>Private</strong><br>
								This function renders the login form if there is no post request. or if the user made a mistake while login in.
								The login form html is loaded and assigned to the <a href="#htmlBase"> htmlBase class </a>.
							</p>

						<h6> <a id="postLogin"> postLogin </a> </h6>
							<p>
								<strong>Private</strong><br>
								This function checks the login post, encrypts the password, and sends the user to either the admin page, or 
								re-renders the login form depending on the result of the function.
							</p>

						<h6> <a id="logout"> logout </a> </h6>
							<p>
								<strong>Public</strong> <br>
								This function destroys all user related session, and deleted all user related data that the system requires to acces the system.
								after that the function re-renders the login form.
							</p>

					<h5> <a id="redirect"> redirect </a> </h5>
						<h6> <a id="functionTo"> To </a> </h6>
							<p>
								<strong>Public Static</strong> <br>
								Parameters of function:
								<span class="params">
									<p class="muted"> <code> $path; -> string </code> The path the user is sent to.</p>
									<p class="muted"> <code> $notice; -> string </code> The message shown after a redirect</p>
									<p class="muted"> <code> $sort; -> string </code> The type of message -> Success, Info, Notice, Alert</p>
								</span>
								<br>
								This function checks if there are any messages that the user should see, and places those in a session. After the message variables are set
								the path is checked for existance, and the user will be redirected to this path. if the path is not existing, the user is redirected
								to the home page.
							</p>

						<h6> <a id="functionHome"> Home </a> </h6>
							<p>
								<strong>Public Static</strong> <br>
								Parameters of function:
								<span class="params">
									<p class="muted"> <code> $notice; -> string </code> The message shown after a redirect</p>
									<p class="muted"> <code> $sort; -> string </code> The type of message -> Success, Info, Notice, Alert</p>
								</span>
								<br>
								The home function sends the user back to the home page when called. This page is a documentation page for administrators about the usage
								of 'Power pages CMS'.
							</p>

						<h6> <a id="functionBack"> Back </a> </h6>
							<p>
								<strong>Public Static</strong> <br>
								This function sends a user back to the previous page via a session if that session exists.
							</p>

						<h6> <a id="functionRefresh"> Refresh </a> </h6>
							<p>
								<strong>Public Static</strong> <br>
								Parameters of function:
								<span class="params">
									<p class="muted"> <code> $notice; -> string </code> The message shown after a redirect</p>
									<p class="muted"> <code> $sort; -> string </code> The type of message -> Success, Info, Notice, Alert</p>
								</span>
								<br>
								This function sends the user back to the page on which a user is currently on. This can be very usefull when using restfull requests.
							</p>

						<h6> <a id="functionInstall"> Install </a> </h6>
							<p>
								<strong>Public Static</strong> <br>
								Parameters of function:
								<span class="params">
									<p class="muted"> <code> $notice; -> string </code> The message shown after a redirect</p>
									<p class="muted"> <code> $sort; -> string </code> The type of message -> Success, Info, Notice, Alert</p>
								</span>
								<br>
								Redirects the user to the web interface installation of the system.
							</p>

					<h5> <a id="request"> Request </a> </h5>
						<p>
							<strong>Public static</strong>
							Functies:
							<span class="functies">
								<p class="muted"> <code> function globals </code> </p>
								<p class="muted"> <code> function server </code> </p>
								<p class="muted"> <code> function get </code> </p>
								<p class="muted"> <code> function post </code> </p>
								<p class="muted"> <code> function files </code> </p>
								<p class="muted"> <code> function cookies </code> </p>
								<p class="muted"> <code> function request </code> </p>
								<p class="muted"> <code> function env </code> </p>
							</span>
							<br>
							parameters van functies:
							<span class="param">
								<p class="muted"> <code> $name; -> string/array </code> The name of the keys of the variables that need to be fetched.</p>
							</span>
							<br>
							The functions of the Request class render a super global variable, clean those values up, parses the values inside an array
							and returns those values to the system.
							<code> $array['name'] = 'value' </code>
						</p>

					<h5> <a id="secure"> Secure </a> </h5>
						<p class="alert">
							The secure class is not yet build, but later on meant to verify API requests to the system, and make extra security against
							hackers and crackers.
						</p>

					<h5> <a id="system"> System </a> </h5>
						Properties van de System class: <br>
						<div class="properties">
							<p class="muted">
								<code> protected $_permissionss; -> array </code> <br>
								A 2D array with a path to the folder inside the system, and an array with the type of the file/folder, the written
								permissions -> drwxr--r--, and a decimal number for the permissions of a folder -> 744
							</p>
						</div>

						<h6> <a id="system__construct"> __construct </a> </h6>
							<p>
								<strong>Public</strong> <br>
								This function calls all the other functions inside the System class. this class is mean to tell administrators about the
								things in the system that may cause a problem later on with advanced useage.
							</p>

						<h6> <a id="setFolderpermissionss"> setFolderpermissionss </a> </h6>
							<p>
								<strong>protected</strong><br>
								This function calls the <a href="#getpermissionss"> getpermissionss </a> function, and sets the values of the array per folder.
							</p>

						<h6> <a id="getpermissionss"> getpermissionss </a> </h6>
							<p>
								<strong>protected</strong><br>
								This function gets and parses the permissionss of a path that is called. and returns the written value of the permissions.
							</p>

						<h6> <a id="setDecimalpermissions"> setDecimalpermissions </a> </h6>
							<p>
								<strong>protected</strong><br>
								This function converts the written permissions values to numeric values, via a 'switch'. From there it edits the Array
								and finally there's an array with userfull data of paths.
							</p>

						<h6> <a id="checkDecimalpermissions"> checkDecimalpermissions </a> </h6>
							<p>
								<strong>protected</strong><br>
								This function looks at the permissions of folders/files/paths and gives a message if the permissions of a path should
								possibly be edited to prevend further errors in the system. The Message has a path to the folder, and the current permissions.
								So that when the message is given, the administrator knows exactly which folder should be edited.
							</p>

				<h4> <a id="build"> Build </a> </h4>
					<h5><a id="autoloader"> autoloader </a></h5>
						<h6><a href=""></a></h6>
						<p>
							
						</p>

					<h5><a id="htmlBase"> htmlBase </a></h5>
						<h6><a href=""></a></h6>
						<p>
							
						</p>

					<h5><a id="install"> install </a></h5>
						<h6><a href=""></a></h6>
						<p>
							
						</p>

					<h5><a id="module"> Module </a></h5>
						<h6><a href=""></a></h6>
						<p>
							
						</p>

					<h5><a id="void"> <strong>Void</strong> </a></h5>
						<h6><a href=""></a></h6>
						<p>
							
						</p>

					<h5><a id="webview"> webview </a></h5>
						<h6><a href=""></a></h6>
						<p>
							
						</p>


				<h4> <a id="database"> Database </a> </h4>
					<h5><a id="databaseBase"> databaseBase </a></h5>
						<h6><a href=""></a></h6>
						<p>
							
						</p>
			</p>
		</span>	
	</div>
	<hr>
</div>
 -->