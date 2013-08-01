<style>
.SettingsTabWrapper{
	width:30%;
}

.SettingsTabWrapper ul{
	list-style: none;
}

.SettingsTabWrapper ul li{
	padding:4% 0 4% 4%;
	border:1px solid #ccc;
	border-right: 0px;
	border-radius: 5px 0px 0px 5px;
	margin-bottom: 2%;

}
.SettingsTabWrapper ul li:hover{
	font-color:rgba(255,255,255,1);
	background-color: rgba(255,102,0,1);
}

.SettingsTabContentWrapper{
	padding-left: 4%;
	border-left: 1px solid #ccc;
	width:65%;
}

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

</style>

<form action="">
	<fieldset>
		<div class="settingsGroup">
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