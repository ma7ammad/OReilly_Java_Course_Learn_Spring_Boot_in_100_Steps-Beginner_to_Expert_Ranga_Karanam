<%@ include file="common/header.jspf" %>

<html>
	<head>
		<title>Login</title>
	</head>
	<body>	
		<h1>Mo First JSP!! Welcome  ${name }</h1>
		<br>
		<br>
		<br>
		<font color = "red"> ${errorMessage }</font>
		<form method = "post">
			Name: 		<input type= "text" name="name" />
			Password: 	<input type = "password" name = "password" />
			<input type = "submit" />
		</form>
<%@ include file="common/footer.jspf" %>