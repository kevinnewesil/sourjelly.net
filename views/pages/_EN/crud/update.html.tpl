<script type="text/javascript">
	$(document).ready(function(){
		$('.redactor').redactor({ minHeight: 250 });
		
		$(".empty-form").click(function(){
			$("textarea").html('');
			$(".redactor_editor").html('');
		});
	});
</script>

<form action="{base}/crud/update/{id}/?ns=controllers&amp;path=controller_path" method="post" class="form form-horizontal">

	<div class="row">
		<div class="span4">
			<div class="control-group">
				<label class="control-label" for="title">page Title:</label>
				<div class="controls">
					<input type="text" name="title" value="{title}" id="title">
				</div>
			</div>


			<div class="control-group">
				<label for="parent" class="control-label">Belongs to menu item:</label>
				<div class="controls">
					<select name="parent" id="parent">
						{parent}
					</select>
				</div>
			</div>

			<div class="control-group">
				<label class="control-label">Page created on:</label>
				<div class="controls">
					<small class="muted">{created_at}</small>
				</div>
			</div>
		</div>

		<div class="span6 offset1">
			<div class="tabbable tabs-right"> <!-- Only required for left/right tabs -->
				<ul class="nav nav-tabs">
					<li class="active"><a href="#basicInfo" data-toggle="tab">Basic information</a></li>
					<li><a href="#meta-data" data-toggle="tab">Meta data</a></li>
					<li><a href="#titleProbs" data-toggle="tab">Title properties</a></li>
					<li><a href="#contentProbs" data-toggle="tab">Content properties</a></li>
				</ul>
				<div class="tab-content">

					<div class="tab-pane active" id="basicInfo">

						<div class="control-group">
							<label for="activeFrontEnd" class="control-label">Active on front-end:</label>
							<div class="controls">
								<input type="checkbox" name="activeFrontEnd" id="activeFrontEnd" {frontend_checked}>
							</div>
						</div>
						
						<div class="control-group">
							<label for="activeBackEnd" class="control-label">Active on back-end:</label>
							<div class="controls">
								<input type="checkbox" name="activeBackEnd"id="activeBackEnd" {backend_checked}>
							</div>
						</div>

						<div class="control-group">
							<label for="visible" class="control-label">visible in main menu:</label>
							<div class="controls">
								<input type="checkbox" name="visible" id="visible" {checked_visable}>
							</div>
						</div>

					</div>

					<div class="tab-pane" id="meta-data">
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
							<label for="titleTextAlign" class="control-label">Text alignment:</label>
							<div class="controls">
								<select name="titleTextAlign" id="titleTextAlign">
									<option value="left" {titleAlignleft_selected}>Left</option>
									<option value="right" {titleAlignright_selected}>Right</option>
									<option value="center" {titleAligncenter_selected}>Center</option>
									<option value="justify" {titleAlignjustify_selected}>Justify</option>
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
								<input type="text" name="contentId" value="{content_id}" id="contentId" placeholder="Id name">
							</div>
						</div>

						<div class="control-group">
							<label for="contentClass" class="control-label">Class:</label>
							<div class="controls">
								<input type="text" name="contentClass" value="{content_class}" id="contentClass" placeholder="Class name">
							</div>
						</div>

						<div class="control-group">
							<label for="contentTextAlign" class="control-label">Text alignment:</label>
							<div class="controls">
								<select name="contentTextAlign" id="contentTextAlign">
									<option value="left" {contentAlignleft_selected}>Left</option>
									<option value="right" {contentAlignright_selected}>Right</option>
									<option value="center" {contentAligncenter_selected}>Center</option>
									<option value="justify" {contentAlignjustify_selected}>Justify</option>
								</select>
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
		<div class="controls">
			<button type="submit" name="submit" value="update" class="btn btn-primary btn-large" id="update">Update page</button>
			<button type="reset" class="btn btn-inverse btn-large empty-form">Empty form</button>
		</div>
	</div>	
</form>
