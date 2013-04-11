<form method="post" action="{base}/crud/create/?ns=controllers&amp;path=controller_path" class="form">
	<h4>Create page</h4>

	<label for="title">Page title:</label>
	<input type="text" name="title" value="" placeholder="pagina title" id="title"/>

	<label for="parent">Belongs to menu item:</label>
	<select name="parent" id="parent">
		<option value="-">No submenu item</option>
		{pagesoptions}
	</select>

	<label for="content">Page content:</label>
	<textarea rows="15" name="content" id="content" class="span11" placeholder="De content van Uw nieuwe pagina komt hier."></textarea>

	<br>

	visable in main menu: <input type="checkbox" name="visable" checked="checked">

	<br><br>
	
	<button type="reset" class="btn btn-inverse btn-large">Empty form</button>
	<button type="submit" name="submit" value="create" class="btn btn-primary btn-large">Create page</button>
</form>
