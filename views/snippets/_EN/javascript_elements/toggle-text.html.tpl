<div class="toggle">
	<div class="toggle-box">
		<h4>{toggle-box-text}</h4>
		<div class="arrow-to-right">
            <div class="arrow-inner"></div>
            <div class="arrow-outer"></div>
        </div>
	</div>

	{nav}
</div>

<style>
	.toggle{
		font-family     : 'Ubuntu', sans-serif;
	}

	.toggle-box{
		top             : 0;
		left            : 0;
		bottom          : 0;
		z-index         : 1080;
		font-weight     : 400;
	
		width           : 120px;
		height          : 40px;
		padding         : 10px;

		color           : #333333;
		background-color: #FFFFFF;

		box-shadow      : 2px 2px 2px #EEEEEE;
	
		border          : medium none;
		position        : fixed;
		text-align      : center;
	}

	.toggle-box h4{

	}

	.toggle-box h4:first-letter{
		font-size 		: 150%;
		color 			: #D67F57;
		font-weight 	: 300;

		text-transform 	: uppercase; 
	}

	.toggle .navbar-left{
		left 			: -10000px;
	}
	.toggle .navbar-right{
		right 			: -10000px;
	}

	.arrow-to-right{
		width 			: 50px;
	}

	.arrow-to-right .arrow-inner{
		width        	: 0;
		height        	: 0;
		
		top           	: 20px;
		left          	: 140px;

		z-index       	: 3000;

		position      	: fixed;

		border-left   	: 10px solid white;
		border-top    	: 10px solid transparent;
		border-bottom 	: 10px solid transparent;
	}

	.arrow-to-right .arrow-outer{
		width        	: 0;
		height       	: 0;

		top          	: 16px;
		left         	: 140px;

		z-index      	: 2000;

		position     	: fixed;

		border-top   	: 14px solid transparent;
		border-bottom 	: 14px solid transparent;
		border-left  	: 14px solid rgba(200,200,200,0.2);
		
		
	}
</style>

<script>
	$(document).ready(function(){

		$.cookie('toggle-nav') == 'on' ? $(".toggle-box").next().animate({ left : 0  }) : null ;

		$('.toggle-box').click(function() {

	        if($(this).next().attr('class').indexOf('navbar-left') >= 0)
	        {
	        	if(parseInt($(this).next().css('left'),10) == -10000)
	        		$.cookie("toggle-nav", 'on');
	        	else
	        		$.removeCookie("toggle-nav");

	        	$(this).next().animate({ left: parseInt($(this).next().css('left'),10) == 0 ? -10000 : 0 });
	        	
	        }
	        else
	        {
	        	$(this).next().animate({ right: parseInt($(this).next().css('right'),10) == 0 ? -10000 : 0});
	        	
	        }
		});
	})
</script>