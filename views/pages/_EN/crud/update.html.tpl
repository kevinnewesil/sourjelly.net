<script type="text/javascript">
	$(document).ready(function(){
		$('.redactor').redactor();
	});
</script>

<form action="{base}/crud/update/{id}/?ns=controllers&amp;path=controller_path" method="post" class="form form-horizontal">

	<div class="row">
		<div class="span4">
			<div class="control-group">
				<label class="control-label" for="title">Title:</label>
				<div class="controls">
					<input type="text" name="title" value="{title}" id="title">
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
		</div>

		<div class="span6 offset1">
			<div class="tabbable tabs-right"> <!-- Only required for left/right tabs -->
				<ul class="nav nav-tabs">
					<li class="disabled"><a href="#" class="disabled">Extra information</a></li>
					<li class="active"><a href="#meta-data" data-toggle="tab">Meta data</a></li>
					<li><a href="#titleProbs" data-toggle="tab">Title properties</a></li>
					<li><a href="#contentProbs" data-toggle="tab">Content properties</a></li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="meta-data">
						<div class="control-group">
							<label for="metaTags" class="control-label">Meta tags:</label>
							<div class="controls">
								<input type="text" name="metaTags" value="{meta_tags}" id="metaTags" placeholder="Meta tags">
							</div>
						</div>

						<div class="control-group">
							<label for="metaDescription" class="control-label">Meta description:</label>
							<div class="controls">
								<input type="text" name="metaDescription" value="{meta_description}" id="metaDescription" placeholder="Meta description">
							</div>
						</div>
					</div>
					<div class="tab-pane" id="titleProbs">
						<div class="control-group">
							<label for="showPagetitle" class="control-label">Show pagetitle:</label>
							<div class="controls">
								<input type="checkbox" name="showPagetitle" id="showPagetitle" {pagetitle_checked}>
							</div>
						</div>

						<div class="control-group">
							<label for="showPagetitle" class="control-label">Text alignment:</label>
							<div class="controls">
								<select name="showPagetitle" id="showPagetitle">
									<option value="left">Left</option>
									<option value="right">Right</option>
									<option value="center">Center</option>
									<option value="justify">Justify</option>
								</select>
							</div>
						</div>

						<div class="control-group">
							<label for="fontSize" class="control-label">Font size:</label>
							<div class="controls">
								<input type="text" name="fontSize" id="fontSize" value="{fontsize}">
							</div>
						</div>
					</div>
					<div class="tab-pane" id="contentProbs">
						<div class="control-group">
							<label for="contentId" class="control-label">Id:</label>
							<div class="controls">
								<input type="text" name="contentId" value="{content_id}" id="contentId" placeholder="Id1 Id2 Id3">
							</div>
						</div>

						<div class="control-group">
							<label for="contentClass" class="control-label">Class:</label>
							<div class="controls">
								<input type="text" name="contentClass" value="{content_class}" id="contentClass" placeholder="Class1 class2 class3">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="control-group">
		<label for="content" class="control-label">Content:</label>
		<div class="controls">
			<textarea name="content" id="content" rows="15" class="redactor">{content}</textarea>
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
