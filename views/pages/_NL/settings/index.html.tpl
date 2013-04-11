<h2>Instellingen</h2>
<form action="{base}/settings/update/?ns=controllers&amp;path=controller_path" class="form form-horizontal" method="POST">
	<fieldset>
		<legend>Foutmeldingen</legend>

		<div class="control-group">
			<label for="displayErrors" class="control-label">
				<abbr title="Laat script fouten op het scherm weergeven">Foutmeldingen</abbr>
			</label>
			<div class="controls">
				<input type="checkbox" name="displayErrors" {checked_displayErrors}>
			</div>
		</div>

		<div class="control-group">
			<label for="displayStartupErrors" class="control-label">
				<abbr title="Laat fouten zien die voorkomen bij het opstarten van de server">Opstart fouten</abbr>
			</label>
			<div class="controls">
				<input type="checkbox" name="displayStartupErrors" {checked_displayStartupErrors}>
			</div>
		</div>

		<div class="control-group">
			<label for="logErrors" class="control-label">
				<abbr title="Foutmeldingen opslaan in een bestand op de server">Foutmeldingen opslaan</abbr>
			</label>
			<div class="controls">
				<input type="checkbox" name="logErrors" {checked_logErrors}>
			</div>
		</div>

		<div class="control-group">
			<label for="trackErrors" class="control-label">
				<abbr title="Een volledige backtrack van elke foutmelding weergeven">Foutmeldingen volgen</abbr>
			</label>
			<div class="controls">
				<input type="checkbox" name="trackErrors" {checked_trackErrors}>
			</div>
		</div>

		<div class="control-group">
			<label for="htmlErrors" class="control-label">
				<abbr title="Laat foutmeldingen in HTML code zien">Html foutmeldingen</abbr>
			</label>
			<div class="controls">
				<input type="checkbox" name="htmlErrors" {checked_htmlErrors}>
			</div>
		</div>
	</fieldset>

	<fieldset>
		<legend>Limiten</legend>

		<div class="control-group">
			<label for="maxExecutionTime" class="control-label">
				<abbr title="De maximale tijd dat een request naar de server mag duren"> Maximale loop tijd </abbr>
			</label>
			<div class="controls">
				<input type="text" name="maxExecutionTime" id="maxExecutionTime" value="{maxExecutionTime}" placeholder="300">
			</div>
		</div>

		<div class="control-group">
			<label for="memoryLimit" class="control-label">
				<abbr title="Het maximale geheugen dat een request naar de server mag gebruiken">Geheugen limiet</abbr>
			</label>
			<div class="controls">
				<input type="text" name="memoryLimit" id="memoryLimit" value="{memoryLimit}" placeholder="50">
			</div>
		</div>

		<div class="control-group">
			<label for="postMaxSize" class="control-label">
				<abbr title="Het maximum wat een formulier aan data kan versturen naar de server">Max post groote</abbr>
			</label>
			<div class="controls">
				<input type="text" name="postMaxSize" id="postMaxSize" value="{postMaxSize}" placeholder="250">
			</div>
		</div>

		<div class="control-group">
			<label for="uploadMaxFilesize" class="control-label">
				<abbr title="De maximale groote wat een bestand mag zijn verstuurd vanuit een formulier">Maximale bestands grote</abbr>
			</label>
			<div class="controls">
				<input type="text" name="uploadMaxFilesize" id="uploadMaxFilesize" value="{uploadMaxFilesize}" placeholder="250">
			</div>
		</div>

		<div class="control-group">
			<label for="maxFileUploads" class="control-label">
				<abbr title="Het maximaal aantal bestanden wat per request naar de server mag worden verstuurd">Maximaal aantal bestanden</abbr>
			</label>
			<div class="controls">
				<input type="text" name="maxFileUploads" id="maxFileUploads" value="{maxFileUploads}" placeholder="5">
			</div>
		</div>
	</fieldset>

	<fieldset>
		<legend>Algemene instellingen</legend>

		<div class="control-group">
			<label for="embeddedHtml" class="control-label">
				<abbr title="Toestaan van 'code' in de HTML. (kan de laadtijd vergroten)">Toggle embedded html</abbr>
			</label>
			<div class="controls">
				<input type="checkbox" name="embeddedHtml" {checked_embeddedHtml}>
			</div>
		</div>

		<div class="control-group">
			<label for="ipMonitoring" class="control-label">
				<abbr title="Opslaan in inzage van alle bezoekers en ip-adressen">Toggle ip-monitor</abbr>
			</label>
			<div class="controls">
				<input type="checkbox" name="ipMonitoring" {checked_ipMonitoring}>
			</div>
		</div>

		<div class="control-group">
			<label for="dataTimezone" class="control-label">
				<abbr title="De tijdzone waarin U zich momenteel bevind. BV: Europe/Amsterdam '">Tijdzone</abbr>
			</label>
			<div class="controls">
				<input type="text" name="dataTimezone" id="dataTimezone" value="{dataTimezone}" placeholder="Europe/Amsterdam">
			</div>
		</div>

		<div class="control-group">
			<label for="lang" class="control-label">
				<abbr title="Your favorite lang for the admin system.">Taal</abbr>
			</label>
			<div class="controls">
				<select name="lang">
					<option value="_NL" selected="selected">Nederlands</option>
					<option value="_EN">Engels</option>
				</select>
			</div>
		</div>

	</fieldset>
	<fieldset>
		<legend>Opslaan!</legend>

		<div class="control-group">
			<label for="submit" class="control-label">Verander systeem instellingen:</label>
			<div class="controls">
				<input type="submit" name="submit" value="Opslaan!" class="btn btn-primary btn-large">
			</div>
		</div>

	</fieldset>
</form>
