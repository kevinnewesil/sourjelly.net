<div class="login login-prompt" style="display:none;">
	<form action="#" method="post" class="form" id="login-form">
		<div class="control-group">
			<label for="password" class="control-label">Type password to continue...</label>
			<div class="controls">
				<input type="password" name="password" id="password" value="" placeholder="Password">
			</div>
		</div>
		<div class="control-group">
			<div class="controls">
				<input type="submit" name="submit" id="submit" value="Go" class="btn btn-primary btn-large">
			</div>
		</div>
	</form>	
</div>

<h2>Settings</h2>

<div class="tabbable tabs-left">
	<ul class="nav nav-tabs">
		<li class="active">
			<a data-toggle="tab" href="#lA"><i class="icon-remove"></i> Errors</a>
		</li>
		<li>
			<a data-toggle="tab" href="#lB"><i class="icon-bullhorn"></i> Limits</a>
		</li>
		<li>
			<a data-toggle="tab" href="#lC"><i class="icon-wrench"></i> Common settings</a>
		</li>
		<li class="disabled">
			<a data-toggle="tab" href="#" > <i class="icon-heart"></i> Save settings</a>
		</li>
	</ul>
	<div class="tab-content settings" id="settingForm">
		<div id="lA" class="tab-pane active">
			<fieldset>
				<legend>Errors</legend>

				<div class="control-group">
					<label for="displayErrors" class="control-label">
						<abbr title="Show script errors on screen">Display errors</abbr>
					</label>
					<div class="controls">
						<div class="checkbox">
							<img src="{assets}img/uploads/toggle_on_off_slider_button.png" alt="" class="image-front">
							<img src="{assets}img/uploads/toggle_on_off_slider_background.png" alt="click to toggle error display" class="image-back">
						</div>
						<input class="hidden_checkbox" type="checkbox" name="displayErrors" {checked_displayErrors}>
					</div>
				</div>

				<div class="control-group">
					<label for="displayStartupErrors" class="control-label">
						<abbr title="Show errors that occure on server startup">Display start-up errors</abbr>
					</label>
					<div class="controls">
						<div class="checkbox">
							<img src="{assets}img/uploads/toggle_on_off_slider_button.png" alt="" class="image-front">
							<img src="{assets}img/uploads/toggle_on_off_slider_background.png" alt="click to toggle error display" class="image-back">
						</div>
						<input class="hidden_checkbox" type="checkbox" name="displayStartupErrors" {checked_displayStartupErrors}>
					</div>
				</div>

				<div class="control-group">
					<label for="logErrors" class="control-label">
						<abbr title="Log errors into a file on your server">Log errors</abbr>
					</label>
					<div class="controls">
						<div class="checkbox">
							<img src="{assets}img/uploads/toggle_on_off_slider_button.png" alt="" class="image-front">
							<img src="{assets}img/uploads/toggle_on_off_slider_background.png" alt="click to toggle error display" class="image-back">
						</div>
						<input class="hidden_checkbox" type="checkbox" name="logErrors" {checked_logErrors}>
					</div>
				</div>

				<div class="control-group">
					<label for="trackErrors" class="control-label">
						<abbr title="Show the full trace of an error.">Track errors</abbr>
					</label>
					<div class="controls">
						<div class="checkbox">
							<img src="{assets}img/uploads/toggle_on_off_slider_button.png" alt="" class="image-front">
							<img src="{assets}img/uploads/toggle_on_off_slider_background.png" alt="click to toggle error display" class="image-back">
						</div>
						<input class="hidden_checkbox" type="checkbox" name="trackErrors" {checked_trackErrors}>
					</div>
				</div>

				<div class="control-group">
					<label for="htmlErrors" class="control-label">
						<abbr title="Show errors in the HTML code">Html errors</abbr>
					</label>
					<div class="controls">
						<div class="checkbox">
							<img src="{assets}img/uploads/toggle_on_off_slider_button.png" alt="" class="image-front">
							<img src="{assets}img/uploads/toggle_on_off_slider_background.png" alt="click to toggle error display" class="image-back">
						</div>
						<input class="hidden_checkbox" type="checkbox" name="htmlErrors" {checked_htmlErrors}>
					</div>
				</div>
			</fieldset>
		</div>
		<div id="lB" class="tab-pane">
			<fieldset>
				<legend>Limits</legend>

				<div class="control-group">
					<label for="maxExecutionTime" class="control-label">
						<abbr title="The maximum time a script is allowed to run for"> Max execution time </abbr>
					</label>
					<div class="controls">
						<input type="text" name="maxExecutionTime" id="maxExecutionTime" value="{maxExecutionTime}" placeholder="300">
					</div>
				</div>

				<div class="control-group">
					<label for="memoryLimit" class="control-label">
						<abbr title="The maximum allowed number of memory the system can use">Memory limit</abbr>
					</label>
					<div class="controls">
						<input type="text" name="memoryLimit" id="memoryLimit" value="{memoryLimit}" placeholder="50">
					</div>
				</div>

				<div class="control-group">
					<label for="postMaxSize" class="control-label">
						<abbr title="The maximum amount of data a form can submit">Max post size</abbr>
					</label>
					<div class="controls">
						<input type="text" name="postMaxSize" id="postMaxSize" value="{postMaxSize}" placeholder="250">
					</div>
				</div>

				<div class="control-group">
					<label for="uploadMaxFilesize" class="control-label">
						<abbr title="The maximum size a posted file may be">Upload max file size</abbr>
					</label>
					<div class="controls">
						<input type="text" name="uploadMaxFilesize" id="uploadMaxFilesize" value="{uploadMaxFilesize}" placeholder="250">
					</div>
				</div>

				<div class="control-group">
					<label for="maxFileUploads" class="control-label">
						<abbr title="The maximum number of file that can be uploaded at the same time">Max file uploads</abbr>
					</label>
					<div class="controls">
						<input type="text" name="maxFileUploads" id="maxFileUploads" value="{maxFileUploads}" placeholder="5">
					</div>
				</div>
			</fieldset>
		</div>
		<div id="lC" class="tab-pane">
			<fieldset>
				<legend>Common settings</legend>

				<div class="control-group">
					<label for="embeddedHtml" class="control-label">
						<abbr title="Allowed the usage of code in HTML as defined in the documentation (Can increase loading time)">Toggle embedded html</abbr>
					</label>
					<div class="controls">
						<div class="checkbox">
							<img src="{assets}img/uploads/toggle_on_off_slider_button.png" alt="" class="image-front">
							<img src="{assets}img/uploads/toggle_on_off_slider_background.png" alt="click to toggle error display" class="image-back">
						</div>
						<input class="hidden_checkbox" type="checkbox" name="embeddedHtml" {checked_embeddedHtml}>
					</div>
				</div>

				<div class="control-group">
					<label for="ipMonitoring" class="control-label">
						<abbr title="Save all the visitors IP adresses in the database">Toggle ip-monitoring</abbr>
					</label>
					<div class="controls">
						<div class="checkbox">
							<img src="{assets}img/uploads/toggle_on_off_slider_button.png" alt="" class="image-front">
							<img src="{assets}img/uploads/toggle_on_off_slider_background.png" alt="click to toggle error display" class="image-back">
						</div>
						<input class="hidden_checkbox" type="checkbox" name="ipMonitoring" {checked_ipMonitoring}>
					</div>
				</div>

				<div class="control-group">
					<label for="timezone" class="control-label">
						<abbr title="The timezone you are currently in: 'Europe/Amsterdam'">Timezone</abbr>
					</label>
					<div class="controls">
						<input type="text" name="timezone" id="timezone" value="{timezone}" placeholder="Europe/Amsterdam">
					</div>
				</div>

				<div class="control-group">
					<label for="lang" class="control-label">
						<abbr title="Your favorite lang for the admin system.">Language</abbr>
					</label>
					<div class="controls">
						<select name="lang">
							<option value="_NL">Dutch</option>
							<option value="_EN" selected="selected">English</option>
						</select>
					</div>
				</div>

			</fieldset>
		</div>
	</div>
</div>
