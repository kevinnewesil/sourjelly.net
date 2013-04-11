<form method="post" action="{base}/crud/create/?ns=controllers&amp;path=controller_path" class="form">
	<h4>Creeer pagina</h4>

	<label for="title">Pagina titel:</label>
	<input type="text" name="title" value="" placeholder="pagina title" id="title"/>

	<label for="parent">Valt onder het menu van:</label>
	<select name="parent" id="parent">
		<option value="-">Geen submenu item</option>
		{pagesoptions}
	</select>

	<label for="content">Pagina content:</label>
	<textarea rows="15" name="content" id="content" class="span11" placeholder="De content van Uw nieuwe pagina komt hier."></textarea>

	<br>
	
	<button type="reset" class="btn btn-inverse btn-large">Leeg velden</button>
	<button type="submit" name="submit" value="create" class="btn btn-primary btn-large">Maak een pagina</button>
</form>