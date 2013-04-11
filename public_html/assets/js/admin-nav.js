$(document).ready(function(){

	//Check if cookie exists , if exists, and is on Show admin bar, else hide admin bar..
	if(getCookie('admin-menu') == 'on')
	{
		$('.icon-arrow-down').attr('class','icon-arrow-up icon-white');
		$('.navbar').css('display:block');
		$('.pull').css('top','30px')
	}
	else
	{
		$('.icon-arrow-up').attr('class','icon-arrow-down icon-white');
		// $('.navbar').css('display','none');
		$('.pull').css('top','-10px');
	}

	//Make tiny animation for hover over it, Gives idea of interactivity.
	$('.pull').on("mouseleave",function(){ $(this).css('top',parseInt( $(this).css("top").replace('px','') )-10) });

	$('.pull').on("mouseenter",function(){ $(this).css('top',parseInt( $(this).css("top").replace('px','') )+10) });

	//Toggle admin bar on/off
	$('.pull').toggle(function() {
	 	$('.navbar').slideDown();
		$(this).animate({
			top : 30,
		});
		$('.icon-arrow-down').attr('class','icon-arrow-up icon-white');

		setCookie('admin-menu','on','365')
	}, function() {
	  	$('.navbar').slideUp();
		$(this).animate({
			top : -10,
		});

		$('.icon-arrow-up').attr('class','icon-arrow-down icon-white');

		setCookie('admin-menu','off','365')
	});	

	//Set a cookie via javascript.
	function setCookie(c_name,value,exdays)
	{
		var exdate=new Date();
		exdate.setDate(exdate.getDate() + exdays);
		var c_value=escape(value) + ((exdays==null) ? "" : "; expires="+exdate.toUTCString());
		document.cookie=c_name + "=" + c_value;
	}

	//get the cookie by name.
	function getCookie(c_name)
	{
		var i,x,y,ARRcookies=document.cookie.split(";");
		for (i=0;i<ARRcookies.length;i++)
		{
			x=ARRcookies[i].substr(0,ARRcookies[i].indexOf("="));
		  	y=ARRcookies[i].substr(ARRcookies[i].indexOf("=")+1);
		  	x=x.replace(/^\s+|\s+$/g,"");
		  	if (x==c_name)
		    {
		    	return unescape(y);
		    }
		}
	}
});
