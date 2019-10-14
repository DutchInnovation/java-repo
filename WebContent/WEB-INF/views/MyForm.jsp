<h1>What's your name?</h1>
<form action="/bedankts.jsp method="POST">
	<input type="text" name="name" placeholder="Typ Hier">
	<br/>
	<input type="email" name="email" placeholder="Typ Hier">
	<br/>
	<input type="password" name="wachtwoord" placeholder="Typ Hier">
	<input type="submit" value="Submit">
</form>


<!-- print in concole -->
<% System.out.println(request.getParameter("name")); %>
<!-- print op pagina zelf -->
<% out.println(request.getParameter("name")); %>