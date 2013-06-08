<form class="form form-horizontal layout-navigation-form" method="post" action="{base}/layouts/navigation/?ns=controllers&amp;path=controller_path">
	<fieldset>
		<legend>Navigation settings</legend>

		<div class="control-group">
			<label for="header" class="control-label">Position from header</label>
			<div class="controls">
				<select name="positionFromHeader" id="header">
					<option value="above">Above</option>
					<option value="below">Below</option>
					<option value="left">Left</option>
					<option value="right">Right</option>
				</select>
			</div>
		</div>

		<div class="control-group">
			<label for="z-index" class="control-label">Over header</label>
			<div class="controls">
				<select name="zIndex" id="z-index">
					<option value="0">don't merge layers</option>
					<option value="1000">In front of</option>
					<option value="-1000">Behind</option>
				</select>
			</div>
		</div>

		<div class="control-group">
			<label for="always-visible" class="control-label">Always visible</label>
			<div class="controls"><input type="checkbox" id="always-visible" name="alwaysVisible" {alwaysVisible_value}></div>
		</div>		

		<div class="control-group">
			<label for="dynamic-navigation" class="control-label">Dynamic navigation</label>
			<div class="controls"><input type="checkbox" id="dynamic-navigation" name="dynamicNavigation" {dynamicNavigation_value}></div>
		</div>
	
		<div class="sj-hidden">
			<div class="javascript-sort">
				<div class="control-group">
					<label for="js-function" class="control-label">Dynamic sort</label>
					<div class="controls">
						<select id="js-function" name="jsFunction">
							<option value="toggle">Toggle</option>
							<option value="slideIn">Slide in</option>
						</select>
					</div>
				</div>
			</div>

			<div class="sj-hidden-toggle">
				<div class="control-group">
					<label for="animation-style" class="control-label">Toggle animation style</label>
					<div class="controls">
						<select name="toggleAnimationStyle" id="animation-style">
							<option value="left">left to right</option>
							<option value="right">Right to left</option>
							<option value="top">Up to down</option>
							<option value="bottom">Down to up</option>
						</select>
					</div>
				</div>
			</div>

			<div class="sj-hidden-slideIn">
				<div class="control-group">
					<label for="slidein" class="control-label">Slide in animation style</label>
					<div class="controls">
						<select name="slideInAnimationStyle" id="slidein">
							<option value="left">Left to right</option>
							<option value="right">Right to left</option>
							<option value="top">Up to down</option>
							<option value="bottom">Down to up</option>
						</select>
					</div>
				</div>
			</div>
		</div>
	
		<div class="control-group">
			<label for="toggle-trigger" class="control-label">Brand</label>
			<div class="controls">
				<select name="toggleTrigger" id="toggle-trigger">
					<option value="text">Text</option>
					<option value="image">Image</option>
				</select>

				<input type="text" name="toggleTriggerText" value="{toggleTriggerText_value}" placeholder="Text" id="toggle-trigger-text">
				
			</div>
		</div>

		<div class="control-group">
			<label for="submit" class="control-label">Save!</label>
			<div class="controls"><input type="submit" name="submit" value="save" id="submit" class="btn btn-large btn-primary"></div>
		</div>

	</fieldset>
</form>