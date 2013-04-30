<script type="text/javascript">
	$(window).load(function(){
		$(".sj-hidden").css('display','none');
		$(".sj-hidden-toggle").css('display','none');
	});


	$(document).ready(function(){

		$("#dynamic-navigation").change(function(){
			if($(this).is(":checked") === true){
				$(".sj-hidden").css('display','block');

				if($("#js-function").val() == 'toggle'){
					$(".javascript-toggle").css('display','block');
				}else{
					$(".sj-hidden").css('display','none');
				}

			}else{
				$(".sj-hidden").css('display','none');
			}
		});


		$(".javascript-sort").change(function(){
			$(".sj-hidden-toggle").css('display','none');

			if($("#js-function").val() == 'toggle'){
				$(".javascript-toggle").css('display','block');
			};
		});

		$(".form").submit(function(){
			
			var data = {};

			$(".form input").each(function(){
				name = $(this).attr('name');
				value = $(this).val();
				data[name] = value;
			});

			$(".form select").each(function(){
				name = $(this).attr('name');
				value = $(this).val();
				data[name] = value;
			});

			$.each(data,function(key,value){
				alert(key + ' : ' + value);
			});

			return false;

			// ajax 

			//success / error
		});
	});
</script>

<form class="form form-horizontal" method="post" action="{base}/layouts/navigation/?ns=controllers&amp;path=controller_path">
	<fieldset>
		<legend>Navigation settings</legend>
		<div class="control-group">
			<label for="position" class="control-label">Position</label>
			<div class="controls">
				<select id="position" name="position">
					<option value="absolute">Absolute</option>
					<option value="relative">Relative</option>
					<option value="fixed">Fixed</option>
				</select>
			</div>
		</div>

		<div class="control-group">
			<label for="header" class="control-label">Position from header</label>
			<div class="controls">
				<select name="header" id="header">
					<option value="above">Above</option>
					<option value="below">Below</option>
					<option value="left">Left</option>
					<option value="right">Right</option>
				</select>
			</div>
		</div>

		<div class="control-group">
			<label for="z-index" class="control-label">Over header</label>
			<div class="controls">
				<select name="z-index" id="z-index">
					<option value="0">don't merge layers</option>
					<option value="1000">In front of</option>
					<option value="-1000">Behind</option>
				</select>
			</div>
		</div>

		<div class="control-group">
			<label for="sort" class="control-label">Navigation layout sort</label>
			<div class="controls">
				<select name="sort" id="sort">
					<option value="navbar">Navbar</option>
					<option value="navbar-inverse">Navbar inverse</option>
					<option value="tabbable">tabbable</option>
					<option value="nav-list">Nav list</option>
					<option value="nav-pills">Nav pills</option>
					<option value="nav-stacked">Nav stacked</option>
					<option value="nav-tabs">Nav tabs</option>
					<option value="nav-tabs nav-stacked">Stacked tabs</option>
					<option value="nav-pills nav-stacked">Stacked pills</option>
				</select>
			</div>
		</div>

		<div class="control-group">
			<label for="width" class="control-label">Navigation width</label>
			<div class="controls">
				<input type="range" min="1" max="100" step="1" value="100" list="powers" id="width" name="width">
				<span class="help-inline">Width in % value , range from 1 - 100</span>
			</div>

			<datalist id="powers">
				<option value="0">
				<option value="10">
				<option value="20">
				<option value="30">
				<option value="40">
				<option value="50">
				<option value="60">
				<option value="70">
				<option value="80">
				<option value="90">
				<option value="100">
			</datalist>
		</div>

		<div class="control-group">
			<label for="dynamic-navigation" class="control-label">Dynamic navigation</label>
			<div class="controls"><input type="checkbox" id="dynamic-navigation" name="dynamic-navigation"></div>
		</div>
	
		<div class="sj-hidden">
			<div class="javascript-sort">
				<div class="control-group">
					<label for="dynamic-sort" class="control-label">Dynamic sort</label>
					<div class="controls">
						<select id="js-function" name="js-function" id="dynamic-sort">
							<option value="toggle" selected="selected">Toggle</option>
							<option value=""></option>
							<option value=""></option>
							<option value=""></option>
							<option value=""></option>
						</select>
					</div>
				</div>
			</div>

			<div class="sj-hidden-toggle javascript-toggle">
				<div class="control-group">
					<label for="animation-style" class="control-label">Animation style</label>
					<div class="controls">
						<select name="animation-style" id="animation-style">
							<option value="ltr">left to right</option>
							<option value="rtl">Right to left</option>
							<option value="utd">Up to down</option>
							<option value="dtp">Down to up</option>
						</select>
					</div>
				</div>

				<div class="control-group">
					<label for="toggle-trigger" class="control-label">Toggle trigger</label>
					<div class="controls"><select name="toggle-trigger" id="toggle-trigger">
							<option value="box">Box</option>
							<option value="image">Image</option>
							<option value="logo">Logo</option>
							<option value="text">Text</option>
						</select>
					</div>
				</div>
			</div>
		</div>

		<div class="control-group">
			<label for="submit" class="control-label">Save!</label>
			<div class="controls"><input type="submit" name="submit" value="save" id="submit"></div>
		</div>

	</fieldset>
</form>