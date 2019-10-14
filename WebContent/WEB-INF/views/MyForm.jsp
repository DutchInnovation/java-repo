<h1>What's your name?</h1>
<form action="/views/Bedankt.jsp" method="POST">
	naam:
	<input type="text" name="name" placeholder="Typ Hier" value="davvvb">
	<br/>
	email:
	<input type="email" name="email" placeholder="Typ Hier" value ="dabbbb@gmail.com">
	<br/>
	wachtwoord:
	<input type="password" name="wachtwoord" placeholder="Typ Hier" value="nou">
	<input type="submit" value="Submit">
</form>


<!-- print in concole -->
<% System.out.println(request.getParameter("name")); %>
<!-- print op pagina zelf -->
<% out.println(request.getParameter("name")); %>