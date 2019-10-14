<h1>What's your name?</h1>
<form method="POST">
	<input type="text" name="name" placeholder="Typ Hier">
	<br/>
	<input type="submit" value="Submit">
</form>


<!-- print in concole -->
<% System.out.println(request.getParameter("name")); %>
<!-- print op pagina zelf -->
<% out.println(request.getParameter("name")); %>