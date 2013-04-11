<noscript>
	<br>
	<p class="alert">
		Dit systeem is gebouwd op javascript, als U javascript uit hebt staan, verander dan de instellingen zodat Javascript weer werkt.
	</p>
</noscript>
<br>
	<div class="affix-menu">
		<ul class="well nav nav-list span3" style="max-width:40%;">
			<li class="nav-header">Documentatie</li>
			<li>
				<a href="#paginas" class="nav-header">Pagina's</a>
				<ul class="nav nav-list">
					<li><a href="#PaginaMaken">Pagina maken</a></li>
					<li><a href="#PaginaOverzicht">Pagina overzicht</a></li>
					<li><a href="#PaginaBewerken">Pagina bewerken</a></li>
					<li><a href="#PaginaVerwijderen">Pagina verwijderen</a></li>
					<li><a href="#MenuVolgorde">Menu volgorde</a></li>
					<li><a href="#VerwijderdePaginas">Verwijderde pagina's</a></li>
				</ul>
			</li>
			<li class="divider"></li>
			<li>
				<a class="nav-header" href="#modules">
					Modules 			 
				</a>
				<ul class="nav nav-list">
					<li class="dropdown">
						<a href="#gebruik">Gebruik van modules</a> 
						<ul class="nav nav-list">
							<li>
								<a href="#installeren">Installatie</a> 
								<ul class="nav nav-list">
									<li><a href="#url">Via url</a></li>
									<li><a href="#upload">Via upload</a></li>
									<li><a href="#handmatig">Handmatig</a></li>
								</ul>
							</li>
						</ul>
					</li>
					<li><a href="#overzicht">Overzicht</a></li>
					<li><a href="#instellingen">Instellingen</a></li>
					<li class="developerOption">
						<a href="#devGuide">Ontwikkelaars handboek</a> 
						<ul class="nav nav-list">
							<li><a href="#structuur">Mappen structuur</a></li>
							<li>
								<a href="#paden">Paden</a> 
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
			<li><a class="nav-header" href="#themas">Thema's</a></li>

			<li class="divider"></li>
			<li><a class="nav-header" href="#account">Account</a></li>

			<li class="divider"></li>
			<li><a class="nav-header" href="#settings">Instellingen</a></li>

			<li class="divider developerOption"></li>
			<li><a class="nav-header developerOption" href="#folders">Mappen</a></li>

			<li class="divider developerOption"></li>
			<li class="developerOption">
				<a class="nav-header" href="#classes">Classen</a>
				<ul class="nav nav-list">
					<li>
						<a href="#core"> Core classen</a>
						<ul class="nav nav-list">
							<li>
								<a href="access"> Access </a>
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
					<li><a href="#install">Installatie</a></li>
					<li><a href="#migrate">Migratie</a></li>
					<li><a href="#backupdb">Database backup</a></li>
					<li><a href="#generate">Genereer</a></li>
				</ul>
			</li>

		</ul>
	</div>

<div class="content pull-right span8">
	<div id="paginas">
		<h2><a id="paginas">Pagina's</a></h2>
		<h3><a id="PaginaMaken">Pagina maken</a></h3>
		<p>
			Men kan via het menu het item ‘pagina maken’ selecteren. Vanuit hier komt er een overzicht met 3 velden. De titel van de pagina ,
			de pagina waar deze pagina onder valt, en de content van de pagina. Deze moeten alle drie worden ingevuld voor het formulier verstuurd kan worden.
		</p>

		<h3><a id="PaginaOverzicht">Pagina overzicht</a></h3>
		<p>
			op de pagina ‘pagina overzicht’ staat een tabel, met de data van alle aangemaakte pagina’s. Deze tabel is sorteerbaar op alle velden. met behulp van deze velden kan men
			snel zien welke pagina zich onder welke naam bevind, en of het een hoofd menu pagina is , of een submenu pagina. Ook staan er meerdere knoppen langs de rand. 
			De knop met de sleutel erin, in het licht grijs is om pagina’s te bewerken. de zwarte knop met het prullenbak icoontje is voor verwijdering van de pagina.
		</p>

		<h3><a id="PaginaBewerken">Pagina bewerken</a></h3>
		<p>
			op de pagina ‘ pagina bewerken’ aangeroepen vanuit het pagina overzicht, krijgt men een zelfde layout als op een pagina maken. het verschil is dat bij deze een pagina 
			word aangepast in plaats van aangemaakt. het is mogelijk pagina’s van menu te veranderen, en de content en titel van een pagina te wijzigen.
		</p>

		<h3><a id="PaginaVerwijderen">Pagina verwijderen</a></h3>
		<p>
			Mocht men de pagina verwijderen vanuit het pagina overzicht, word deze op non actief gezet. de bezoekers kunnen deze pagina niet meer zien, en in het CMS overzicht word 
			deze pagina niet weer gegeven, wel staat deze pagina in een lijst op de pagina ‘verwijderde pagina’s
		</p>

		<h3><a id="MenuVolgorde">Menu volgorde</a></h3>
		<p>
			Op deze pagina staan alle pagina’s die men heeft aangemaakt met behulp van ‘SourJelly’ CMS. Met behulp van ‘javascript’ kun je de titels van de pagina’s in de juiste 
			volgorde slepen. Wanneer de pagina’s op volgorde staan klikt men op update, en word de volgorde van het menu aangepast
		</p>

		<h3><a id="VerwijderdePaginas">Verwijderde pagina's</a></h3>
		<p>
			Op deze pagina staat een overzicht met verwijderde pagina’s waarop men verwijderde pagina’s terug kan zetten, en dus de verwijdering ongedaan kan maken.
		</p>

	</div>
	<hr>
	<div id="modules">

		<h2>Modules</h2>

		<span class="gebruik">

			<h3><a id="gebruik">Gebruik van modules</a></h3>

			<span class="installeren">
				<h4> <a id="installeren">Installeren</a></h4>
				<p>
					Het installeren van de modules kan op drie verschillende manieren. Alle drie de manieren die hieronder staan genoemd werken hetzelfde. De modules worden bij
					deze methoden op exact hetzelfde manier weggeschreven of benaderd. Welke methode je kiest is de voorkeur van de gebruiker.
				</p>
				<h5><a id="url">Via url</a></h5>
				<p>
        			Men kan er voor kiezen om een module te instaleren via een download link. Dit is het URL van de locatie waar de module zich bevindt.
				</p>
				<h5><a id="upload">Via upload</a></h5>
				<p>
					Men kan een module van de lokale computer downloaden. De module moet ingepakt zijn in een bestand en dit bestand moet een .rar of een .zip extensie hebben.
				</p>
				<h5><a id="handmatig">Handmatig</a></h5>
				<p>
					Je kan handmatig een map in de map 'modules' zetten van het CMS systeem. Het bestand moet bestaan uit een map met de naam van de module met daarin de mappen 'assets', 'code', 'html' en een 'include.inc' bestand.
				</p>
			</span>
			<hr>

			<span class="overzicht">
				<h3><a id="overzicht">Overzicht</a></h3>
				<p>
					In het module overzicht bevinden zich alle geinstalleerde modules. Vanaf hier is het mogelijk om de modules te activeren, deactiveren, en
                    verwijderen. Mocht een module op een pagina geplaatst zijn en de module wordt gedeactiveerd dan word de module verborgen en buiten werking gesteld maar de module 
                    wordt niet verwijderd van de pagina.
                    In het overzicht bevind zich ook een lijst met nummers, deze nummers zijn gekoppeld aan pagina's.
				</p>
			</span>
			<hr>

			<span class="instellingen">
				<h3><a id="instellingen">Instellingen</a></h3>
				<p>
					Het menu van de modules heeft ook een instellingen item. Dit is een pagina waarin je per module specifieke instellingen kan wijzigen voor een bepaalde module.
				</p>
			</span>
			<hr>
		</span>

		<span class="developerOption">
			<h2><a id="devGuide">Developers Guide</a></h2>

			<span class="mappen">
				<h3>
					<a id="structuur">
						Mappen structuur
					</a>
				</h3>
				<p>
					Als men een module ontwikkelt dient men te houden aan de structuur die gegeven is in het CMS systeem.
	            	De map van de module is genoemd naar de naam van de module en bevat drie submappen die 'html', 'code', en 'assets' heten.
	            	De map 'html' komen html bestanden. In de 'assets' map bevinden zich weer drie submappen die 'img', 'css' en 'js' heten.
	            	In de 'img' map komen afbeeldingen. In de 'css' komen de CSS stylesheets. In de 'js' komen de javascript bestanden.
	            	En in de map 'code' komen de broncode bestanden van de module.
	            	In de hoofdmap van je module komt een bestand genaamt <a href="#include.inc">'include.inc'</a>.
				</p>
				<hr>
			</span>

			<span class="paden">
				<h3>
					<a id="paden">
						gebruik van paden
					</a>
				</h3>

				<h4><a id="html/javascript">Vanuit html/javascript</a></h4>
				<p>
					In de core van 'SourJelly CMS' worden een paar placeholders automatisch vervangen in de CSS.
					Om een path te maken naar afbeeldingen, stylesheets, en javascript bestanden gebruik je een placeholder tussen '{}'.
					Om een link te creeren naar jou modules gebruik je { modules } (zonder spaties).<br>
					de link ziet er als volgt uit na vervanging door de core:<br>
					{ modules }'naam van modules'/assets/subfolder/bestandsnaam <br>
					bijvoorbeeld: {modules}slider/assets/js/slider.js

				</p>

				<h4><a id="php">Vanuit php</a></h4>
				<p class="alert">
					<button type="button" class="close" data-dismiss="alert">&times;</button>
					Let op bij gebruik van de core classes. Lees de documentatie over de classes goed door. Schrijf alleen code op de core classes
					als je zeker weet wat je doet en hoe de classes en functies werken. roep niet zomaar functies aan zonder de API class te raadplegen.
				</p>
				<p>
					Vanuit php kan je constanten gebruiken. De constanden zijn gedefineerd en hebben allemaal een dynamisch path naar jou bestemming.<br>
					lijst van constanten:
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

					Let erop dat vanuit php je maar 1 bestand terug kan sturen naar de class die de modules afhandelt. Dit kan worden gedaan als volgt:
					<code>$content = 'alle content voor de module';</code><br>
					De rest van de code word automatisch afgehandeld en <code>$content</code> word automatisch in de html verwerkt op de pagina's waar aan 
					deze module is gekoppelt

					<br><br>

					<p class="alert alert-info">
						Zorg dus dat in je php bestand die de module aanroept, altijd een <code>$content</code> is, die de HTML van de module aanroept
						als deze bestaat. Zodat de content goed word weergegeven op de bezoekers pagina.
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
				Het 'include.inc' bestand in jou module is bedoeld om alle benodige bestanden in te laden.
				voorbeeld van een include.inc bestand: <br>
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
		<h2>Thema's</h2>
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
		<h2>Instellingen</h2>
		<p>
			
		</p>
	</div>
	<hr>
	<div id="folders" class="developerOption">
		<h2> Folders </h2>
		<h3> <a id="mappenstructuur"> Mappen structuur </a> </h3>
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
			Public -> Toegankelijk vanuit overal -><br>
			<code> $Class -> function(); $class -> param; </code>
			<br><br>

			Private -> Alleen toegankelijk vanuit de class zelf. -><br>
			<code> $this -> function(); $this -> param; </code>
			<br><br>

			Protected -> Alleen toegankelijk vanuit de class zelf, en vanuit parent en child classes. -><br>
			<code> $this -> function(); </code>
			<br><br>

			Static -> Kan worden aangeroepen zonder gebruik te maken van het Object -> <br>
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
							Properties van de Auth class: <br>
							<div class="properties">
								<p class="muted"> <code> protected $_username; -> string</code> De Gebruikersnaam die word gepost bij een registratie.</p>
								<p class="muted"> <code> protected $_password; -> string</code> Het wachtwoord dat word gepost bij een registratie -> encrypted.</p>
								<p class="muted"> <code> protected $_email; -> string</code> Het e-mail adress waar een validatie e-mail naar wordt verstuurd.</p>
								<p class="muted"> <code> protected $_created_at; -> dateObject</code> De datum/tijd waarop de gebruiker geregistreerd is in het systeem.</p>
								<p class="muted"> <code> protected $_name; -> string</code> De naam van de gebruiker die zich registreerd</p>
								<p class="muted"> <code> protected $_link; -> Mysqli object</code> De link naar de Database. -> 
									<abbr title="Vanuit een oudere versie van het systeem" class="initialism">Deprecated</span> </p>
							</div>
						</p>
						<h6> <a id="login"> Login </a> </h6>
							<p>
								<strong>Public</strong> <br>
								Deze functie Verwijst naar de get of post functie (Pre restfull). Checked op een submit van een Login formulier.
							</p>

						<h6> <a id="getLogin"> getLogin </a> </h6>
							<p>
								<strong>Private</strong><br>
								Deze functie renderd als er geen POST aanwezig is, of als er een post met foutmeldingen is gemaakt. Deze haalt de html op.
								en wijst deze toe aan de <a href="#htmlBase"> htmlBase class </a>.
							</p>

						<h6> <a id="postLogin"> postLogin </a> </h6>
							<p>
								<strong>Private</strong><br>
								Deze functie checked een login, Encrypt het passwoord, en stuurd de gebruiker naar de desbetreffende pagina. 
								Bij success word de gebruiker doorverwezen naar de admin pagina of naar de gebruiker gerelateerde actie.
								bij een foutieve login word de gebruiker terug verwijzen naar de <a href="#auth"> Auth class</a> en,
								rendert deze de <a href="#login"> Login functie</a>.
							</p>

						<h6> <a id="logout"> logout </a> </h6>
							<p>
								<strong>Public</strong> <br>
								Deze functie vernietigd de gebruikers sessie, en verwijdert alle gebruiker gerelateerde informatie nodig om in het systeem te komen.
								Daarna verwijst deze functie terug naar de <a href="#login"> login functie</a>.
							</p>

					<h5> <a id="redirect"> redirect </a> </h5>
						<h6> <a id="functionTo"> To </a> </h6>
							<p>
								<strong>Public Static</strong> <br>
								parameters van functie:
								<span class="params">
									<p class="muted"> <code> $path; -> string </code> Het pad waarna de functie een header stuurt</p>
									<p class="muted"> <code> $notice; -> string </code> Een bericht die mee word gestuurd en weergegeven op de aangekomen pagina</p>
									<p class="muted"> <code> $sort; -> string </code> Het soort van melding -> Success, Info, Notice, Alert</p>
								</span>
								<br>
								Deze functie stuurt de gebruiker naar een zelf gemaakte locatie. Deze locatie moet wel werkend zijn, anders krijg je een automatische
								redirect naar de home pagina met een melding dat de link verkeerd was. Het makkelijkste is om de link te maken, vanuit de browser alles na
								het hoofd domein te kopieren en vanaf daar die link invoeren als string naar de To functie.
							</p>

						<h6> <a id="functionHome"> Home </a> </h6>
							<p>
								<strong>Public Static</strong> <br>
								parameters van functie:
								<span class="params">
									<p class="muted"> <code> $notice; -> string </code> Een bericht die mee word gestuurd en weergegeven op de aangekomen pagina</p>
									<p class="muted"> <code> $sort; -> string </code> Het soort van melding -> Success, Info, Notice, Alert</p>
								</span>
								<br>
								De home functie stuurt als aangeroepen, automatisch een gebruiker terug naar de home pagina, wat dus, deze pagina is voor administratoren
								en de hoofd content pagina voor andere gebruikers.
							</p>

						<h6> <a id="functionBack"> Back </a> </h6>
							<p>
								<strong>Public Static</strong> <br>
								Deze functie stuurt een gebruiker terug naar de vorige pagina als deze aanwezig is.
							</p>

						<h6> <a id="functionRefresh"> Refresh </a> </h6>
							<p>
								<strong>Public Static</strong> <br>
								parameters van functie:
								<span class="params">
									<p class="muted"> <code> $notice; -> string </code> Een bericht die mee word gestuurd en weergegeven op de aangekomen pagina</p>
									<p class="muted"> <code> $sort; -> string </code> Het soort van melding -> Success, Info, Notice, Alert</p>
								</span>
								<br>
								Deze functie stuurt de gebruiker terug naar de pagina waar Hij/zij zich momenteel op bevind. Dit kan handig zijn als je met restful
								functies werkt, en dus alle controller acties vanuit dezelfde URL uitvoert.
							</p>

						<h6> <a id="functionInstall"> Install </a> </h6>
							<p>
								<strong>Public Static</strong> <br>
								parameters van functie:
								<span class="params">
									<p class="muted"> <code> $notice; -> string </code> Een bericht die mee word gestuurd en weergegeven op de aangekomen pagina</p>
									<p class="muted"> <code> $sort; -> string </code> Het soort van melding -> Success, Info, Notice, Alert</p>
								</span>
								<br>
								Stuurt de gebruiker naar de installatie van het systeem.
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
								<p class="muted"> <code> $name; -> string/array </code> De naam van de key van de variable die je wilt ophalen</p>
							</span>
							<br>
							Deze functies van de Request class returnen een gecontroleerde cleaned versie van de global variable die de user heeft gestuurd.
							de variable die wordt terug gestuurd vanuit een van de functies van de Request class is een array. 
							<code> $array['name'] = 'waarde' </code>
						</p>

					<h5> <a id="secure"> Secure </a> </h5>
						<p class="alert">
							De Secure class in het systeem is bedoelt later om API verzoeken te kunnen parsen, en verifieren. Aangezien deze functionaliteit
							nog niet nodig is, is deze class nog niet gebouwd, maar de bedoeling is om deze in te toekomst te kunnen en gaan gebruiken.
						</p>

					<h5> <a id="system"> System </a> </h5>
						Properties van de System class: <br>
						<div class="properties">
							<p class="muted">
								<code> protected $_premissions; -> array </code> 
								Een 2D array met een path naar een folder op het systeem, en een Array, met het type bestand/folder, de geschreven 
								permissie -> drwxr--r--, en een decimaal getal voor de premissie van een folder -> 744

							</p>
						</div>

						<h6> <a id="system__construct"> __construct </a> </h6>
							<p>
								<strong>Public</strong> <br>
								Deze functie roept de andere functies aan van de System class, Deze class is bedoelt om administratoren op te hoogte te stellen
								van eventuele fouten die kunnen worden veroorzaakt door gebrekken op hun server/webhost.
							</p>

						<h6> <a id="setFolderPremissions"> setFolderPremissions </a> </h6>
							<p>
								<strong>protected</strong><br>
								Deze functie roept de <a href="#getPremissions"> getPremissions </a> functie aan, en set de waarden van de array per folder.
							</p>

						<h6> <a id="getPremissions"> getPremissions </a> </h6>
							<p>
								<strong>protected</strong><br>
								Deze functie haalt de permissies op per path wat word aangeroepen, en stuurd de geschreven waarde van de premissie terug.
							</p>

						<h6> <a id="setDecimalPremission"> setDecimalPremission </a> </h6>
							<p>
								<strong>protected</strong><br>
								Deze functie zet de geschreven waarde van de premissie van een functie om naar een decimale waarde met een 'switch'. Vanuit daar 
								past deze functie de Array aan van de premissies zodat alle waardes vastgesteld staan in de array.
							</p>

						<h6> <a id="checkDecimalPremission"> checkDecimalPremission </a> </h6>
							<p>
								<strong>protected</strong><br>
								Deze functie kijkt de premissies van de folder die mogelijk aanpasbaar moeten zijn door de eigenaar van de folder, en 
								stuurt een waarschuwing terug naar de administrator van het CMS systeem, zodat de administrator weet welke folders
								niet goed geconfigureerd zijn, en op deze manier de folder rechten aan kan passen zodat het systeem, bestanden kan openen,
								aanpassen, aanmaken, en verwijderen indien nodig.
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
