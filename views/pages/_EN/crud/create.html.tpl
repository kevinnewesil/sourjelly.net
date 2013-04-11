<script type="text/javascript">
	$(document).ready(function(){
		$('.redactor').redactor();
	});
</script>

<form method="post" action="{base}/crud/create/?ns=controllers&amp;path=controller_path" class="form form-horizontal">
	<legend>Create page</legend>
	
	<div class="control-group">	
		<label for="title" class="control-label">Page title:</label>
		<div class="controls">
			<input type="text" name="title" value="" placeholder="Page title" id="title"/>
		</div>
	</div>

	<div class="control-group">
		<label for="parent" class="control-label">Belongs to menu item:</label>
		<div class="controls">
			<select name="parent" id="parent">
				<option value="-">No submenu item</option>
				{pagesoptions}
			</select>
		</div>
	</div>

	<div class="control-group">
		<label for="content" class="control-label">Page content:</label>
		<div class="controls">
			<textarea rows="20" cols="30" name="content" id="content" class="redactor" placeholder="Page content"></textarea>
		</div>
	</div>

	<div class="control-group">
		<label for="visable" class="control-label">visable in main menu:</label>
		<div class="controls">
			<input type="checkbox" name="visable" checked="checked">
		</div>
	</div>

	<div class="control-group">
		<div class="controls">
			<button type="submit" name="submit" value="create" class="btn btn-primary btn-large">Create page</button>
			<button type="reset" class="btn btn-inverse btn-large">Empty form</button>
		</div>
	</div>
</form>
