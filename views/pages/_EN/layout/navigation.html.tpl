<script type="text/javascript">
	
	function changeVisibility()
	{
		$(".sj-hidden").css('display','block');

		if($("#js-function").val() == 'toggle')
		{
			$(".sj-hidden-toggle").css('display','block');
		}
		else if($("#js-function").val() =='slideIn')
		{
			$(".sj-hidden-slideIn").css('display','block');
		}
	}

	function setInvisible(everything)
	{
		everything = typeof everything !== 'undefined' ? true : false;

		if(everything === true)
			$(".sj-hidden").css('display','none');

		$(".sj-hidden-toggle").css('display','none');
		$(".sj-hidden-slideIn").css('display','none');
	}

	function saveNavigation(action,data)
	{
		$.ajax({
			url : '{ajax}layout.php',
			dataType : 'json',
			type : 'post',
			data : {
				action : action,
				data : data,
			},

			success : function(data)
			{
				if(data[0] === true)
					alert('update successfull');
				else
					alert('something went wrong saving the navigation layout settings');
			},

			error : function(data)
			{
				console.log('error');
			},
		});
	}

	function setSelect()
	{
		$("select[name=position]").find("option[value={position_value}]").attr('selected',true);
	}

	// Set document styling to zero visibility on non active/used html form attributes
	$(window).load(function(){
		setInvisible(true);

		setSelect();
	});

	$(document).ready(function(){

		// Function to dynamically change visibility inside document on change html attributes.

		$("#dynamic-navigation").change(function(){
			if($(this).is(":checked") === true)
				changeVisibility();
			else
				setInvisible(true);
		});


		$(".javascript-sort").change(function(){			
			setInvisible(false);
			changeVisibility();
		});

		// On submit of form.
		$(".form").submit(function(){
			
			var data = {};

			// $(".form select").each(function(){
			// 	name = $(this).attr('name');
			// 	value = $(this).val();
			// 	data[name] = value;
			// });

			$(".form input, .form select").each(function(){
				if($(this).attr('type') == 'checkbox' || $(this).attr('type') == 'submit')
					return true;

				name = $(this).attr('name');
				value = $(this).val();
				data[name] = value;
			});

			$('.form input[type=checkbox]').each(function(){
				name = $(this).attr('name');
				if($(this).is(":checked"))
					value = '1';
				else
					value = '0';
				data[name] = value;
			});

			saveNavigation('saveNavigationSettings',data);

			return false;
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
				<select name="positionFromHeader" id="header">
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
				<select name="zIndex" id="z-index">
					<option value="0">don't merge layers</option>
					<option value="1000">In front of</option>
					<option value="-1000">Behind</option>
				</select>
			</div>
		</div>

		<div class="control-group">
			<label for="sort" class="control-label">Navigation layout sort</label>
			<div class="controls">
				<select name="navigatinSort" id="sort">
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
				<input type="range" min="1" max="100" step="1" value="{width}" list="powers" id="width" name="width">
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
			<div class="controls"><input type="checkbox" id="dynamic-navigation" name="dynamicNavigation"></div>
		</div>
	
		<div class="sj-hidden">
			<div class="javascript-sort">
				<div class="control-group">
					<label for="js-function" class="control-label">Dynamic sort</label>
					<div class="controls">
						<select id="js-function" name="jsFunction">
							<option value="toggle">Toggle</option>
							<option value="slideIn">Slide in</option>
						</select>
					</div>
				</div>
			</div>

			<div class="sj-hidden-toggle">
				<div class="control-group">
					<label for="animation-style" class="control-label">Toggle animation style</label>
					<div class="controls">
						<select name="toggleAnimationStyle" id="animation-style">
							<option value="ltr">left to right</option>
							<option value="rtl">Right to left</option>
							<option value="utd">Up to down</option>
							<option value="dtp">Down to up</option>
						</select>
					</div>
				</div>

				<div class="control-group">
					<label for="toggle-trigger" class="control-label">Toggle trigger</label>
					<div class="controls">
						<select name="toggleTrigger" id="toggle-trigger">
							<option value="box">Box</option>
							<option value="image">Image</option>
							<option value="logo">Logo</option>
							<option value="text">Text</option>
						</select>
					</div>
				</div>
			</div>

			<div class="sj-hidden-slideIn">
				<div class="control-group">
					<label for="slidein" class="control-label">Slide in animation style</label>
					<div class="controls">
						<select name="slideInAnimationStyle" id="slidein">
							<option value="ltr">Left to right</option>
							<option value="rtl">Right to left</option>
							<option value="utd">Up to down</option>
							<option value="dtu">Down to up</option>
						</select>
					</div>
				</div>
			</div>
		</div>

		<div class="control-group">
			<label for="submit" class="control-label">Save!</label>
			<div class="controls"><input type="submit" name="submit" value="save" id="submit" class="btn btn-large btn-primary"></div>
		</div>

	</fieldset>
</form>