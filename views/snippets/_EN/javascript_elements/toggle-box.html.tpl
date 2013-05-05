<div class="toggle">
	<div class="toggle-box">
		<h4>{toggle-box-text}</h4>
	</div>

	{nav}
</div>

<style>
	.toggle-box{
		position:absolute;
		top:0;
		left:0;
		width:100px;
		height:60px;
		border: black 1px solid;
		z-index: 1080;
	}

	.toggle .nav , .toggle .navbar-left{
		left:-10000px;
	}
	.toggle .nav , .toggle .navbar-right{
		right:-10000px;
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