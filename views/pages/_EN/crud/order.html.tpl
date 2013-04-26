<script type="text/javascript">

	$(document).ready(function(){

		var sorted = [];

		$(".sortable , .subsortable").sortable({
			update: function( event, ui ) {
		 		getAllItems();
			}
		});

		$(".update").click(function(){
			$.ajax({
		 		url : '{ajax}menuSorter.php',
		 		type : 'post',
		 		data : {
		 			menuArr : sorted,
		 		},
		 		success : function(data){
		 			alert("Menu volgorde succesvol upgedate");
		 		}
		 	});
		});

		function getAllItems(){
			sorted = [];
			
			$('.sortable li').each(function(){
	 			sorted.push($(this).attr("id"));
	 		});
		};

	});

</script>

<h2>Menu order</h2>

<div class="well">
	<ol class="sortable unstyled">
		{items}
	</ol>

	<br>

	<a href="#" class="btn btn-primary btn-large update">Update!</a>
</div>
