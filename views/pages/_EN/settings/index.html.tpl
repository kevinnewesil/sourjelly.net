<script type="text/javascript">
	$(document).ready(function(){

		var value = '';
		var name  = '';
		var prompt = false;
		var inputNameGlobal = '';
		var inputValueGlobal = '';

		$("input[type=\"checkbox\"]").each(function(){
			if($(this).is(":checked"))
				$(this).siblings(".checkbox").children(".image-front").css('left','-64px');
		});

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

		$(".checkbox").click(function(){

			if($(this).children(".image-front").css('left')=='-64px')
			{
				$(this).children(".image-front").css('left','0');
				$(this).siblings("input[type=\"checkbox\"]").prop("checked",false);
				name = $(this).siblings("input[type=\"checkbox\"]").attr('name');
				sendQuickRequest('0',name);
			}
			else
			{
				$(this).children(".image-front").css('left','-64px');
				$(this).siblings("input[type=\"checkbox\"]").prop("checked",true);
				name = $(this).siblings("input[type=\"checkbox\"]").attr('name');
				sendQuickRequest('1',name);
			}
		});

		$("option").click(function(){
			value = $(this).val();
			name  = $(this).parent().attr('name');

			sendQuickRequest(value,name);

		});

		function sendQuickRequest(inputValue,inputName){
			
			if(prompt == false)
			{
				promptPassword();
				inputNameGlobal = inputName;
				inputValueGlobal = inputValue;

				return false;
			}

			$.ajax({
				url : "{ajax}settings.php",
				type : "POST",
				dataType : "json",
				data : {
					action : "saveInput",
					name : inputName,
					value : inputValue,
				},
				success : function(data){
					if(data.update == true)
						$('[name="' + inputName + '"]').css({ 'background-color' : '#dff0d8', 'color' : '#468847'});
					else
						$('[name="' + inputName + '"]').css({ 'background-color' : '#f2dede', 'color' : '#b94a48'});
				}
			});
		}

		function promptPassword()
		{
			$(".login-prompt").css('display','inline');
			$("body").append("<div class=\"dark-overlay\"></div>")
		}

		$("#login-form").submit(function(){

			$.ajax({
				url : '{ajax}settings.php',
				type : "post",
				dataType : 'json',
				data : {
					action : "checkLogin",
					password : $("#password").val(),
				},

				success : function(data)
				{
					if(data[0] == true)
					{
						$("body").remove(".dark-overlay");
						$(".login-prompt").css('display','none');
						prompt = true;
						sendQuickRequest(inputValueGlobal,inputNameGlobal);
					}
					else
					{
						$(".login-prompt").prepand("Password wrong.. try again");
					}
				}
			});

			return false;
		});
	});
</script>

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
	</ul>
	<div class="tab-content">
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

<!-- Do some testing if this form still 100% works , delete this bloody comment out of the html !! -->

<!--<form action="{base}/settings/update/?ns=controllers&amp;path=controller_path" class="form form-horizontal" id="form" method="POST" onSubmit="parseLogin();return false;" class="settings">
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
