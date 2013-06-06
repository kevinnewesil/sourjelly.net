<h2>
	Modules
</h2>
<div class="tabbable">
	<ul class="nav nav-tabs">
		<li class="active"><a href="#tab1" data-toggle="tab">Via url</a></li>
		<li><a href="#tab2" data-toggle="tab">Via upload</a></li>
	</ul>

	<form class="tab-content" action="" method="POST" enctype="multipart/form-data">

		<div class="tab-pane active" id="tab1">
			<br>
			<input type="text" name="url" value="" placeholder="Link naar download"/>
			<br/><br/>
			<input type="text" name="description_url" value="" placeholder="Description">

			<input type="submit" name="submit" value="submit" class="btn btn-primary btn-large"/>
		</div>

		<div class="tab-pane" id="tab2">
			<br>
			<!-- Making it possible to access multiple files and upload folder in webkit and firefox. -->
			<input type="text" name="description" value="" placeholder="Description">
			<br>
			<input type="file" name="file" class="file input" multiple="" />
			<br/><br/>
			<input type="submit" name="submit" value="submit" class="btn btn-primary btn-large"/>
		</div>
	</form>
</div>
