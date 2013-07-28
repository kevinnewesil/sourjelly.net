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

<h2>create class settings</h2>

<div class="tabbable tabs-left">
	<ul class="nav nav-tabs">
		<li class="active">
			<a data-toggle="tab" href="#lA"><i class="icon-remove"></i> positioning</a>
		</li>
		<li>
			<a data-toggle="tab" href="#lB"><i class="icon-bullhorn"></i> display &amp; box model</a>
		</li>
		<li>
			<a data-toggle="tab" href="#lC"><i class="icon-wrench"></i> colors</a>
		</li>
		<li>
			<a data-toggle="tab" href="#lD"><i class="icon-wrench"></i> fonts</a>
		</li>
		<li>
			<a data-toggle="tab" href="#lE"><i class="icon-wrench"></i> other</a>
		</li>
		<li class="disabled">
			<a data-toggle="tab" href="#" > <i class="icon-heart"></i> Save settings</a>
		</li>
	</ul>
	<div class="tab-content settings" id="settingForm">
		<div id="lA" class="tab-pane active">
			<fieldset>
				<legend>Positioning</legend>

				<div class="control-group">
					<label for="z-index" class="control-label">
						<abbr title="z-index">z-index</abbr>
					</label>
					<div class="controls">
						<!-- <div class="checkbox">
							<img src="{assets}img/settings/toggle_on_off_slider_button.png" alt="" class="image-front">
							<img src="{assets}img/settings/toggle_on_off_slider_background.png" alt="click to toggle error display" class="image-back">
						</div> -->
						<input type="range" name="points" min="1" max="1000" step="50">
						<input class="hidden_checkbox" type="checkbox" name="displayErrors" {checked_displayErrors}>
					</div>
				</div>

				<div class="control-group">
					<label for="float" class="control-label">
						<abbr title="float">float</abbr>
					</label>
					<div class="controls">
						<select name="float">
							<option value="none" selected="selected">none</option>
							<option value="left">left</option>
							<option value="right">right</option>
						</select>
					</div>
				</div>
				<div class="control-group">
					<label for="position" class="control-label">
						<abbr title="position">position</abbr>
					</label>
					<div class="controls">
						<select name="position">
							<option value="inherit" selected="selected">inherit</option>
							<option value="absolute">absolute</option>
							<option value="relative">relative</option>
							<option value="fixed">fixed</option>
							<option value="static">static</option>
						</select>
					</div>
				</div>
				<div class="control-group">
					<label for="top" class="control-label">
						<abbr title="Top"> top </abbr>
					</label>
					<div class="controls">
						<input type="text" name="top" id="top" value="" placeholder="0.....">
					</div>
				</div>
				<div class="control-group">
					<label for="right" class="control-label">
						<abbr title="right">right</abbr>
					</label>
					<div class="controls">
						<input type="text" name="right" id="right" value="" placeholder="0.....">
					</div>
				</div>
				<div class="control-group">
					<label for="bottom" class="control-label">
						<abbr title="bottom">bottom</abbr>
					</label>
					<div class="controls">
						<input type="text" name="bottom" id="bottom" value="" placeholder="0.....">
					</div>
				</div>
				<div class="control-group">
					<label for="left" class="control-label">
						<abbr title="left">right</abbr>
					</label>
					<div class="controls">
						<input type="text" name="left" id="left" value="" placeholder="0.....">
					</div>
				</div>
			</fieldset>
		</div>
		<div id="lB" class="tab-pane">
			<fieldset>
				<legend>Display &amp; Box Model</legend>
				<div class="control-group">
					<label for="display" class="control-label">
						<abbr title="display">display</abbr>
					</label>
					<div class="controls">
						<select name="display">
							{displaySettingsLoop}
						</select>
					</div>
				</div>	
				<div class="control-group">
					<label for="overflow" class="control-label">
						<abbr title="overflow">overflow</abbr>
					</label>
					<div class="controls">
						<select name="overflow">
							{overflowSettingsLoop}
						</select>
					</div>
				</div>
				<div class="control-group">
					<label for="boxSizing" class="control-label">
						<abbr title="boxSizing">boxSizing</abbr>
					</label>
					<div class="controls">
						<select name="boxSizing">
							{boxSizingSettingsLoop}
						</select>
					</div>
				</div>
				<div class="control-group">
					<label for="width" class="control-label">
						<abbr title="width"> width </abbr>
					</label>
					<div class="controls">
						<input type="text" name="top" id="width" value="" placeholder="0.....">
					</div>
				</div>
				<div class="control-group">
					<label for="height" class="control-label">
						<abbr title="height"> height </abbr>
					</label>
					<div class="controls">
						<input type="text" name="top" id="height" value="" placeholder="height please">
					</div>
				</div>
				<div class="control-group">
					<label for="padding" class="control-label">
						<abbr title="padding"> padding </abbr>
					</label>
					<div class="controls">
						<input type="text" name="top" id="padding" value="" placeholder="padding please">
					</div>
				</div>
				<div class="control-group">
					<label for="margin" class="control-label">
						<abbr title="margin"> margin </abbr>
					</label>
					<div class="controls">
						<input type="text" name="top" id="margin" value="" placeholder="margin please">
					</div>
				</div>
				<div class="control-group">
					<label for="border" class="control-label">
						<abbr title="border"> border </abbr>
					</label>
					<div class="controls">
						<input type="text" name="top" id="border" value="" placeholder="border please">
					</div>
				</div>
				<div class="control-group">
					<label for="borderStyle" class="control-label">
						<abbr title="borderStyle">borderStyle</abbr>
					</label>
					<div class="controls">
						<select name="borderStyle">
							{borderStyleSettingsLoop}
						</select>
					</div>
				</div>														
			</fieldset>
		</div>
		<div id="lC" class="tab-pane">
			<fieldset>
				<legend>Common settings</legend>
				
			</fieldset>
		</div>
	</div>
</div>
