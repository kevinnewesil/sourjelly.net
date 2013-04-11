<form action="{base}/crud/update/{id}/?ns=controllers&amp;path=controller_path" method="post" class="form">
	<label for="title">Title:</label>
	<input type="text" name="title" value="{title}" id="title">

	<label for="content">Content:</label>
	<textarea name="content" id="content" rows="15" class="span11">{content}</textarea>

	<label for="parent">Submenu of:</label>
	<select name="parent" id="parent">
		{parent}
	</select>
	<br><br>

	visable in main menu :  <input type="checkbox" name="visable" {checked_visable}>
	
	<br><br>
	Page created on: {created_at}
	<br><br>
	<input type="submit" name="submit" value="update" class="btn btn-primary btn-large" id="update">
</form>
