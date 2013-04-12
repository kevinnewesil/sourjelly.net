<script type="text/javascript">

	$(document).ready(function(){

		var sorted = {};
		var subsorted = {};

		$(".sortable").sortable({
			update: function( event, ui ) {
			 	sorted = $(".sortable").sortable("toArray");
			}
		});

		$(".subsortable").sortable({
			update: function( event, ui ) {
			 	subsorted = $(".subsortable").sortable( "toArray" );
			}
		});

		$(".update").click(function(){
			$.ajax({
		 		url : '{ajax}menuSorter.php',
		 		type : 'post',
		 		data : {
		 			menuArr : sorted,
		 			submenuArr : subsorted,
		 		},
		 		success : function(data){
		 			alert("Menu volgorde succesvol upgedate");
		 		}
		 	});
		});
	});

</script>

<h2>Menu order</h2>

<div class="well">
	<ol class="sortable">
		{items}
	</ol>

	<br>

	<a href="#" class="btn btn-primary btn-large update">Update!</a>
</div>
