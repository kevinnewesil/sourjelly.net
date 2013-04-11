<script type="text/javascript">
	$(document).ready(function(){
		$('.redactor').redactor();
	});
</script>

<form action="{base}/crud/update/{id}/?ns=controllers&amp;path=controller_path" method="post" class="form form-horizontal">

	<div class="control-group">
		<label class="control-label" for="title">Title:</label>
		<div class="controls">
			<input type="text" name="title" value="{title}" id="title">
		</div>
	</div>

	<div class="control-group">
		<label for="content" class="control-label">Content:</label>
		<div class="controls">
			<textarea name="content" id="content" rows="15" class="redactor">{content}</textarea>
		</div>
	</div>

	<div class="control-group">
		<label for="parent" class="control-label">Submenu of:</label>
		<div class="controls">
			<select name="parent" id="parent">
				{parent}
			</select>
		</div>
	</div>

	<div class="control-group">
		<label class="control-label">visable in main menu:</label>
		<div class="controls">
			<input type="checkbox" name="visable" {checked_visable}>
		</div>
	</div>
	
	<!-- Page created on: {created_at} -->
	
	<div class="control-group">
		<div class="controls">
			<input type="submit" name="submit" value="update" class="btn btn-primary btn-large" id="update">
		</div>
	</div>	
</form>
