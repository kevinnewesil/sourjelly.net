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
	.toggle-box{
		position:fixed;
		top:0;
		left:0;
		height:40px;
		border: medium none;
		z-index: 1080;
		padding:10px;
		font-family: 'Ubuntu', sans-serif;
		font-weight: 700;
		background-color: #FFFFFF;
		bottom: 0;
		color: #333333;
		width: 120px;
		box-shadow: 2px 2px 2px #EEEEEE;
	}

	.toggle .navbar-left{
		left:-10000px;
	}
	.toggle .navbar-right{
		right:-10000px;
	}

	.arrow-to-right{
		width:50px;
	}

	.arrow-to-right .arrow-inner{
		width: 0;
		height: 0;
		border-top: 10px solid transparent;
		border-bottom: 10px solid transparent;
		border-left: 10px solid white;
		position: fixed;
		top: 20px;
		left: 140px;
		z-index: 3000;
	}

	.arrow-to-right .arrow-outer{
		width: 0;
		height: 0;
		border-top: 14px solid transparent;
		border-bottom: 14px solid transparent;
		border-left: 14px solid rgba(200,200,200,0.2);
		position: fixed;
		top: 16px;
		left: 140px;
		z-index: 2000;
	}
</style>

<script>
	$(document).ready(function(){
		$('.toggle-box').click(function() {
	        $(this).next().attr('class') == '.navbar-left' ?
	        	$(this).next().animate({ left: parseInt($(this).next().css('left'),10) == 100 ? -10000 : 100 }) 
	        :
	        	$(this).next().animate({ right: parseInt($(this).next().css('right'),10) == 0 ? -10000 : 0})
		});
	})
</script>