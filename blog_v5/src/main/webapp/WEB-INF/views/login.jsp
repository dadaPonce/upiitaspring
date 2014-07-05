<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Loggin spring Blog</h1>


		<c:if test="${errorLogin}">
			<h4>Usuario o password incorrecto</h4>
			<p>Usuario error: ${SPRING_SECURITY_LAST_EXCEPTION.authentication.name}  </p>
			<p>password error: ${SPRING_SECURITY_LAST_EXCEPTION.authentication.credentials} </p>
		</c:if>
		
<div>EL contenido de la variable de sesion variable =<c:out value="${sessionScope.variable}"></c:out></div>		

	<form action="autentificar" method="post">
		<div>
			<label>Email:</label><input type="text" name="email" />
		</div>
		<div>
			<label>Password:</label><input type="password" name="password" />
		</div>
		<input type="submit" value="Enviar" />
	</form>



</body>
</html>