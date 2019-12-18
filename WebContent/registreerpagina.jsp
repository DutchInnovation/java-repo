<!DOCTYPE html>
<html>
<head>
	<title>Registreer Pagina</title>
  <style type="text/css">
    <style type="text/css">@import url(bourbon);@import url(https://fonts.googleapis.com/css?family=Roboto&display=swap);body{margin:0;padding:0}.content {background: linear-gradient(to bottom right, #ff0000 0%, #ffcc66 100%)!important;position:fixed;width:100%;height:100%;top:0}.wrapper{margin-top:80px;margin-bottom:80px}.form-signin{max-width:380px;padding:15px 30px 45px;margin:0 auto;background-color:#fff;border:1px solid rgba(0,0,0,.1)}.form-signin-heading{margin-bottom:10px;text-align:center}.form-signin-heading2{text-align:center}.form-control{position:relative;font-size:16px;height:auto;padding:10px;@include box-sizing(border-box);}&:focus{z-index:2}input[type=text]{margin-bottom:-1px;border-bottom-left-radius:0;border-bottom-right-radius:0}input[type=password]{margin-bottom:20px;border-top-left-radius:0;border-top-right-radius:0}}
  </style>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="content">
  <div class="wrapper">
    <form action="registreer" method="POST" class="form-signin">
      <h2 class="form-signin-heading">Registreren</h2>       
      <h4 class="form-signin-heading2">Wat is uw naam?</h2>
      Naam:
      <input type="text" class="form-control" name="name" placeholder="Naam" required="" autofocus="" />
      Email:
      <input type="email" class="form-control" name="email" placeholder="Typ Hier" value ="dabbbb@gmail.com">
      Wachtwoord:
      <input type="password" class="form-control" name="wachtwoord" placeholder="Wachtwoord" required=""/>   
      
  		<button style="margin:auto; display:block; width: 125px; " type="submit" class="btn btn-primary">Submit</button>  
    </form>
  </div>
</div>




</body>
</html>