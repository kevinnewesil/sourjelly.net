<style>
.fRight{
	float:right;
}

.fCenter{
	margin:0 auto;
}

.fLeft{
	float:left;
}

.addCssProperty{
	background-image: url('{assets}img/icons/add-interface-HR-SJ.png');
	background-size: 32px;
	width: 32px;
	height:32px;
	border: none;
	background-color:white!important; 
}
.addCssProperty:hover{
	background-image: url('{assets}img/icons/add-ro-interface-HR-SJ.png');
}

.propertyGroup{
	width:100%;
}
.classProperties{
	width:100%;
	float:left;
}

.settingsGroup{
	width:25%;
	float:left;
}

.className{
	width:100%;
	float: none;
}

</style>

<form action="">
	<fieldset>
		<div class="className settingsGroup">
			<label for="className" class="settingsLabel">Class name</label>
			<div class="settings">
				<input type="text" name="className" id="className">
			</div>
		</div>
		<hr>
		<button class="addCssProperty"></button>
		<div class="classProperties">
			
		</div>
	</fieldset>
</form>