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

.editCssProperty{
	background-image: url('{assets}img/icons/edit-interface-HR-SJ.png');
	border: none;
	background-color:white!important; 
	margin-right:5px;
}

.editCssProperty:hover{
	background-image: url('{assets}img/icons/edit-ro-interface-HR-SJ.png');
}

.delCssProperty{
	background-image: url('{assets}img/icons/del-interface-HR-SJ.png');
	border: none;
	background-color:white!important; 
	margin-right:5px;
}

.delCssProperty:hover{
	background-image: url('{assets}img/icons/del-ro-interface-HR-SJ.png');
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
.tableWrapper{

}

.tableHead{
	width:100%;
	text-align: left;
}

.tableHead tr td{
	padding: 10px 0;
	border-bottom: 1px solid #CCC;
}

</style>

<div class="tableWrapper">
	<table class="tableHead" border="0">
		<tr class="">
			<th class="">class name</th>
			<th class="">description</th>
			<th class="">creation date</th>
			<th class="">functions</th>
		</tr>
		{rows}
	</table>
</div>