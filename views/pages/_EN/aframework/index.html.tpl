<form action="">
	<input type="text" name="class"> <!-- class name -->
	<input type="select" name="property[{id}][name]"> <!-- name van de propery --> 
<!-- voor elke property kan je meerdere values doen, dus volgende input komt voor gelijk aan het aantal vIds die heeft -->
	<input type="select" name="property[{id}][value][{vId}]" value="default css value" > <!-- alle values die den property kan hebben -->
</form>