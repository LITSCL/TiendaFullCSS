<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<link rel="stylesheet" href="css/styles.css" />
</head>
<body>
	<header class="header">
		<div class="no-user"></div>
		<div class="logo">
			<h1>PCFactory</h1>
			<br/>
			<h3>Tu partner tecnológico</h3>
		</div>
	</header>

	<nav class="nav">
		<ul>
			<li><a href="formulario_login.jsp">Logearse</a></li>
			<li><a href="formulario_registro.jsp">Registrarse</a></li>
		</ul>
	</nav>

	<form action="UsuarioControlador" method="GET" id="formulario_login"></form> <!-- Se envian los datos las Servlet llamado ValidaUsuario. -->
	<table>
		<tr>
			<td><label for="id">ID</label></td>
			<td><input type="number" name="id" form="formulario_login" required></td> <!-- El input pertenece al formulario con ID=formulario_login (Tiene que ser requerido este campo para que el usuario no lo deje vacio (Si lo deja vacio, en el Server quedaría int id="")). -->
		</tr>
		<tr>
			<td><label for="password">Contraseña</label></td>
			<td><input type="password" name="password" form="formulario_login"></td>
		</tr>
		<tr>
			<td><button type="submit" value="1" form="formulario_login" name="opcion">Ingresar</button></td>
		</tr>
	</table>
	${error} <!-- Mostrando el error mediante una expresión de lenguaje. -->
<%
//Esto es otra forma de mostrar el error.
//if (request.getAttribute("error") != null) {
//out.print(request.getAttribute("error"));
//}
%>
</body>
</html>