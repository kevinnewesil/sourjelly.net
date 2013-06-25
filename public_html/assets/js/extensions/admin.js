$(document).ready(function(){

	// ---------------------------------------------------------------------------------------------- ||
	// Colour picker plugin
	// ---------------------------------------------------------------------------------------------- ||
	$(".colourpicker").ColorPicker({
		color: '#0000ff',

		onShow: function (colpkr) {
			$(colpkr).fadeIn(500);
			return false;
		},

		onHide: function (colpkr) {
			$(colpkr).fadeOut(500);
			return false;
		},

		onBeforeShow: function () {
			$(this).ColorPickerSetColor(this.value);
			inputField = $(this);
		},

		onChange : function(hsb, hex, rgb)
		{
			$(inputField).val("#" + hex);
		},
	});

	// ---------------------------------------------------------------------------------------------- ||
	// Redactor plugin
	// ---------------------------------------------------------------------------------------------- ||
	$('.redactor').redactor({convertDivs: false});

	// ---------------------------------------------------------------------------------------------- ||
	// Tablesorter plugin
	// ---------------------------------------------------------------------------------------------- ||
	$('.tablesorter').tablesorter();

	// ---------------------------------------------------------------------------------------------- ||
	// Sortable menu
	// ---------------------------------------------------------------------------------------------- ||
	$(".sortable , .subsortable").sortable({
		update: function( event, ui ) {
	 		admin.getAllItems();
		}
	});

	// ---------------------------------------------------------------------------------------------- ||
	// Twitter bootstrap tooltip
	// ---------------------------------------------------------------------------------------------- ||
	$('tooltip-element').tooltip();
	$('tooltip-element-bottom').tooltip({
		placement : "bottom",
		title : "Click here"
	});


	$(".update").click(function(){
		$.ajax({
	 		url : ajaxPath + 'menuSorter.php',
	 		type : 'post',
	 		data : {
	 			menuArr : admin.sorted,
	 		},
	 		success : function(data){
	 			alert("Menu volgorde succesvol upgedate");
	 		}
	 	});
	});

	// ---------------------------------------------------------------------------------------------- ||
	// Layout -- Navigation
	// ---------------------------------------------------------------------------------------------- ||
	
	// Function to dynamically change visibility inside document on change html attributes.
	$("#dynamic-navigation").change(function(){
		if($(this).is(":checked") === true)
			admin.changeVisibility();
		else
			admin.setInvisible(true);
	});


	$(".javascript-sort").change(function(){			
		admin.setInvisible(false);
		admin.changeVisibility();
	});

	$("#toggle-trigger").change(function(){
		$(this).val() == 'text' ? $("#toggle-trigger-text").css('display','inline') : console.log('image') ;
	});

	// On submit of form.
	$(".layout-navigation-form").submit(function(){
		
		var data = {};

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

		admin.saveNavigation('saveNavigationSettings',data);

		if(admin.returnValue === true)
			alert('update successfull');
		else
			alert('something went wrong saving the navigation layout settings');

		return false;
	});

	$(".layout-navigation-form input, .layout-navigation-form select").change(function(){

		data = {};

		if($(this).siblings('.navigation-image').length > 0)
			$(this).siblings().remove('.navigation-image');

		name = $(this).attr('name');

		if($(this).attr('type') == 'checkbox')
			if($(this).is(":checked"))
					val = 1;
				else
					val = 0;
		else
			val  = $(this).val();

		data[name] = val;

		admin.saveNavigation('saveNavigationSettings',data);

		if(admin.returnValue === true)
			$('<img src="' + assetsPath + 'img/icons/checked.gif?x=' + Math.random() + '" alt="success" class="navigation-image">').appendTo($(this).parent());
		else
			$('<img src="' + assetsPath + 'img/icons/cross.gif?x=' + Math.random() + '" alt="error" class="navigation-image">').appendTo($(this).parent());

	});

	$(".navigation-image").click(function(){
		$(this).remove();
	});

	// ---------------------------------------------------------------------------------------------- ||
	// Icon settings
	// ---------------------------------------------------------------------------------------------- ||
	
	$("form.icons-selector > fieldset > div.control-group > div.controls > label.checkbox > input[type=\"checkbox\"]").change(function()
    {
        name = $(this).attr('id');

        if($(this).is(':checked'))
            $("." + name ).parent().fadeIn();
        else
            $("." + name ).parent().fadeOut();
    });

	// ---------------------------------------------------------------------------------------------- ||
	// Theme settings
	// ---------------------------------------------------------------------------------------------- ||
	
	$(".activate-theme").click(function(){

		$.ajax({
			url 		: ajaxPath + 'themes.php',
			type 		: 'POST',
			data 		: {
				action 	: 'activate',
				id	   	: $(this).attr("id"),
				current : $(this).html(),
			},
			dataType 	: 'json',
			success: function(data){
				if(data.value == 'true'){
					window.location.reload();
				}else{
					alert('Something went wrong activating the theme...');
				}
			},
		});
	});

	// -------------------------------------------------------------------------------------------------- ||
	// Module settings
	// -------------------------------------------------------------------------------------------------- ||
	$(".undelete-module").click(function(){
		$.ajax({
			url 		: ajaxPath + 'modules.php',
			type 		: 'POST',
			data 		: {
				action 	: 'undelete',
				id	   	: $(this).attr("id"),
			},
			dataType 	: 'json',
			success: function(data){
				if(data.value == 'true'){
					window.location.reload();
				}else{
					alert('Iets ging fout met het activeren van de module..');
				}
			},
		});
	});
	
	$(".activate_module").click(function(){

			$.ajax({
				url 		: ajaxPath + 'modules.php',
				type 		: 'POST',
				data 		: {
					action 	: 'activate',
					id	   	: $(this).attr("id"),
					current : $(this).html(),
				},
				dataType 	: 'json',
				success: function(data){
					if(data.value == 'true'){
						window.location.reload();
					}else{
						alert('Something went wrong activating the module...');
					}
				},
			});
		});

	// -------------------------------------------------------------------------------------------------- ||
	// Settings settings
	// -------------------------------------------------------------------------------------------------- ||
	$("#settingForm input[type=\"checkbox\"]").each(function(){
		if($(this).is(":checked"))
			$(this).siblings(".checkbox").children(".image-front").css('left','-64px');
	});

	//Set the value of the input field into a global variable value. Make sure it's empty.
	$("#settingForm input").change(function(){
		value = '';
		name  = '';

		if($(this).attr('type') == 'checkbox')
			if($(this).is(':checked'))
				value = '1';
			else
				value = '0';
		else
			value = ($(this).val());

		name = $(this).attr('name');

		admin.sendQuickRequest(value,name);

	});

	$("#settingForm .checkbox").click(function(){

		if($(this).children(".image-front").css('left')=='-64px')
		{
			$(this).children(".image-front").css('left','0');
			$(this).siblings("input[type=\"checkbox\"]").prop("checked",false);
			name = $(this).siblings("input[type=\"checkbox\"]").attr('name');
			admin.sendQuickRequest('0',name);
		}
		else
		{
			$(this).children(".image-front").css('left','-64px');
			$(this).siblings("input[type=\"checkbox\"]").prop("checked",true);
			name = $(this).siblings("input[type=\"checkbox\"]").attr('name');
			admin.sendQuickRequest('1',name);
		}
	});

	$("#settingForm option").click(function(){
		value = $(this).val();
		name  = $(this).parent().attr('name');

		admin.sendQuickRequest(value,name);

	});

	$("#login-form").submit(function(){
		$.ajax({
			url : ajaxPath + 'settings.php',
			type : "post",
			dataType : 'json',
			data : {
				action : "checkLogin",
				password : $("#password").val(),
			},

			success : function(data)
			{
				if(data['checkLogin'] == true)
				{
					$(".login-prompt").css('display','none');
					admin.systemSettings.prompt = true;
					$(".dark-overlay").remove();
					admin.sendQuickRequest(admin.systemSettings.inputValueGlobal,admin.systemSettings.inputNameGlobal);
				}
				else
				{	
					$(".error").remove();
					$(".login-prompt").append("<span class=\"error\">Password wrong.. try again</span>");
				}
			}
		});
		
		return false;
	});

	// ---------------------------------------------------------------------------------------------- ||
	// End of document.ready function
	// ---------------------------------------------------------------------------------------------- ||

});

// -------------------------------------------------------------------------------------------------- ||
// Set document styling to zero visibility on non active/used html form attributes
// -------------------------------------------------------------------------------------------------- ||
$(window).load(function(){
	
	admin.setSelect();
	admin.setInvisible(true);

	if($("#dynamic-navigation").is(":checked") === true)
		admin.changeVisibility();

	$(".hidden-input-icons").css('display','none');
});

// -------------------------------------------------------------------------------------------------- ||
// Admin object.
// -------------------------------------------------------------------------------------------------- ||
var admin = {

	// Global variables
	sorted : [],
	returnValue : true,

	// global variables settings page
	systemSettings : {
		value : '',
		name  : '',
		prompt : false,
		inputNameGlobal : '',
		inputValueGlobal : '',
	},

	// ---------------------------------------------------------------------------------------------- ||
	// Menu sorter.
	// ---------------------------------------------------------------------------------------------- ||
	getAllItems : function()
	{
		$('.sortable li').each(function(){
			admin.sorted.push($(this).attr("id"));
		});
	},

	// ---------------------------------------------------------------------------------------------- ||
	// Layouts
	// ---------------------------------------------------------------------------------------------- ||
	// Navigation
	// ---------------------------------------------------------------------------------------------- ||
	
	changeVisibility : function()
	{
		$(".sj-hidden").css('display','block');

		if($("#js-function").val() == 'toggle')
		{
			$(".sj-hidden-toggle").css('display','block');
			
			$("#toggle-trigger").val() == 'text' ? $("#toggle-trigger-text").css('display','inline') : console.log('image') ;
		}
		else if($("#js-function").val() =='slideIn')
		{
			$(".sj-hidden-slideIn").css('display','block');
		}
	},

	setInvisible : function(everything)
	{
		everything = typeof everything !== 'undefined' ? true : false;

		if(everything === true)
			$(".sj-hidden").css('display','none');

		$(".sj-hidden-toggle").css('display','none');
		$(".sj-hidden-slideIn").css('display','none');	
		$("#toggle-trigger-text").css('display','none');
	},

	saveNavigation : function(action,data)
	{
		$.ajax({
			url : ajaxPath + 'layout.php',
			dataType : 'json',
			type : 'post',
			data : {
				action : action,
				data : data,
			},

			success : function(data)
			{
				admin.returnValue = data[0];
			},

			error : function(data)
			{
				admin.returnValue = false;
			},
		});
	},

	setSelect : function()
	{
		$("select[name=positionFromHeader]").find("option[value=\"" + navigationPlaceholders[0] + "\"]").attr('selected',true);
		$("select[name=zIndex]").find("option[value=\"" + navigationPlaceholders[1] + "\"]").attr('selected',true);
		$("select[name=jsFunction]").find("option[value=\"" + navigationPlaceholders[2] + "\"]").attr('selected',true);
		$("select[name=toggleAnimationStyle]").find("option[value=\"" + navigationPlaceholders[3] + "\"]").attr('selected',true);
		$("select[name=toggleTrigger]").find("option[value=\"" + navigationPlaceholders[4] + "\"]").attr('selected',true);
		$("select[name=slideInAnimationStyle]").find("option[value=\"" + navigationPlaceholders[5] + "\"]").attr('selected',true);
	},

	// ---------------------------------------------------------------------------------------------- ||
	// Settings
	// ---------------------------------------------------------------------------------------------- ||
	sendQuickRequest : function(inputValue,inputName)
	{	
		admin.systemSettings.inputNameGlobal = inputName;
		admin.systemSettings.inputValueGlobal = inputValue;

		if(admin.systemSettings.prompt == false)
		{
			admin.promptPassword();
			return false;
		}

		$.ajax({
			url : ajaxPath + "settings.php",
			type : "POST",
			dataType : "json",
			data : {
				action : "saveInput",
				name : admin.systemSettings.inputNameGlobal,
				value : admin.systemSettings.inputValueGlobal,
			},
			success : function(data){
				if(data.update == true)
					$('[name="' + inputName + '"]').css({ 'background-color' : '#dff0d8', 'color' : '#468847'});
				else
					$('[name="' + inputName + '"]').css({ 'background-color' : '#f2dede', 'color' : '#b94a48'});
			}
		});
	},

	promptPassword : function()
	{
		$(".login-prompt").css('display','inline');
		$("body").append("<div class=\"dark-overlay\"></div>")
	},


}