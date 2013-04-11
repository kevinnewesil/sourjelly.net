<script type="text/javascript">
	$(document).ready(function(){

		var value = '';
		var name  = '';

		//Set the value of the input field into a global variable value. Make sure it's empty.
		$("input").change(function(){
			value = '';
			name  = '';

			if($(this).attr('type') == 'checkbox')
				if($(this).is(':checked'))
					value = '1';
				else
					value = '0';
			else
				value = ($(this).val());

			name = $(this).attr('name');

			sendQuickRequest(value,name);
	
		});

		$("option").click(function(){
			value = $(this).val();
			name  = $(this).parent().attr('name');

			sendQuickRequest(value,name);

		});

		function sendQuickRequest(inputValue,inputName){
			$.ajax({
				url : "{ajax}/settings.php",
				type : "POST",
				dataType : "json",
				data : {
					action : "saveInput",
					name : inputName,
					value : inputValue,
				},
				success : function(data){
					if(data.update)
						alert('yay');
					else
						alert('booo!');
				}
			});
		}
	});
</script>

<div class="login" style="display:none;">
	<form action="" method="post" class="form form-horizontal" id="login-form" onSubmit="checkLogin(); return false;">
		<div class="control-group">
			<label for="password" class="control-label">Password</label>
			<div class="controls">
				<input type="password" name="password" id="password" value="" placeholder="Password">
			</div>
		</div>
	</form>	
</div>

<h2>Settings</h2>
<form action="{base}/settings/update/?ns=controllers&amp;path=controller_path" class="form form-horizontal" id="form" method="POST" onSubmit="parseLogin();return false;" class="settings">
	<fieldset>
		<legend>Errors</legend>

		<div class="control-group">
			<label for="displayErrors" class="control-label">
				<abbr title="Show script errors on screen">Display errors</abbr>
			</label>
			<div class="controls">
				<input type="checkbox" name="displayErrors" {checked_displayErrors}>
			</div>
		</div>

		<div class="control-group">
			<label for="displayStartupErrors" class="control-label">
				<abbr title="Show errors that occure on server startup">Display start-up errors</abbr>
			</label>
			<div class="controls">
				<input type="checkbox" name="displayStartupErrors" {checked_displayStartupErrors}>
			</div>
		</div>

		<div class="control-group">
			<label for="logErrors" class="control-label">
				<abbr title="Log errors into a file on your server">Log errors</abbr>
			</label>
			<div class="controls">
				<input type="checkbox" name="logErrors" {checked_logErrors}>
			</div>
		</div>

		<div class="control-group">
			<label for="trackErrors" class="control-label">
				<abbr title="Show the full trace of an error.">Track errors</abbr>
			</label>
			<div class="controls">
				<input type="checkbox" name="trackErrors" {checked_trackErrors}>
			</div>
		</div>

		<div class="control-group">
			<label for="htmlErrors" class="control-label">
				<abbr title="Show errors in the HTML code">Html errors</abbr>
			</label>
			<div class="controls">
				<input type="checkbox" name="htmlErrors" {checked_htmlErrors}>
			</div>
		</div>
	</fieldset>

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

	<fieldset>
		<legend>Common settings</legend>

		<div class="control-group">
			<label for="embeddedHtml" class="control-label">
				<abbr title="Allowed the usage of code in HTML as defined in the documentation (Can increase loading time)">Toggle embedded html</abbr>
			</label>
			<div class="controls">
				<input type="checkbox" name="embeddedHtml" {checked_embeddedHtml}>
			</div>
		</div>

		<div class="control-group">
			<label for="ipMonitoring" class="control-label">
				<abbr title="Save all the visitors IP adresses in the database">Toggle ip-monitoring</abbr>
			</label>
			<div class="controls">
				<input type="checkbox" name="ipMonitoring" {checked_ipMonitoring}>
			</div>
		</div>

		<div class="control-group">
			<label for="dataTimezone" class="control-label">
				<abbr title="The timezone you are currently in: 'Europe/Amsterdam'">Timezone</abbr>
			</label>
			<div class="controls">
				<input type="text" name="dataTimezone" id="dataTimezone" value="{dataTimezone}" placeholder="Europe/Amsterdam">
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
	<fieldset>
		<legend>Save!</legend>

		<div class="control-group">
			<label for="submit" class="control-label">Change system settings:</label>
			<div class="controls">
				<input type="submit" name="submit" value="Save!" class="btn btn-primary btn-large">
			</div>
		</div>

	</fieldset>
</form>
