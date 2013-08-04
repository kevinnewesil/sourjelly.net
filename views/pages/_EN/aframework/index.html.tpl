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

.wHalf{
	width:50%;
}

.wQuater{
	width:25%;
}

.w3Quater{
	width:75%;
}

.addCssProperty{
	background-image: url('{assets}img/icons/add-interface-HR-SJ.png');
	border: none;
	background-color:white!important; 
	float:right;
}

.wIconL{
	width: 32px;
	height:32px;
	background-size: 32px 32px;
}

.wIconS{
	width: 16px;
	height:16px;
	background-size: 16px 16px;
}

.settings{
	width:100%;
}

.bBot{
	border-bottom: 1px solid #ccc;
}

.addCssProperty:hover{
	background-image: url('{assets}img/icons/add-ro-interface-HR-SJ.png');
}

.propertyGroup{
	width:100%;
	float:left;
	border-bottom: 1px dotted #ccc;
	margin-top: 20px;
    padding-bottom: 20px;
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

<form action="{base}/aFrameworks/create/?ns=controllers&amp;path=controller_path" method="post">
	<fieldset>
		<div class="className settingsGroup">
			<label for="className" class="settingsLabel">Class name</label>
			<div class="settings fLeft bBot">
				<div class="fLeft wHalf">
					<input type="text" name="className" id="className">
				</div>
				<div class="fRight wHalf">
					<button class="addCssProperty fRight wIconL"></button>
				</div>
				<hr>
			</div>
		</div>

		<div class="classProperties">
			
		</div>

		<input type="submit" name="submit" value="submit">
	</fieldset>
</form>