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

	<form action="UsuarioControlador" method="GET" id="formulario_registro"></form> <!-- Se envian los datos las Servlet llamado UsuarioControlador. -->
	<table>
		<tr>
			<td><label for="id">ID</label></td>
			<td><input type="number" name="id" form="formulario_registro" required></td> <!-- El input pertenece al formulario con ID=formulario_registro (Tiene que ser requerido este campo para que el usuario no lo deje vacio (Si lo deja vacio, en el Server quedaría int id="")). -->
		</tr>
		<tr>
			<td><label for="password">Contraseña</label></td>
			<td><input type="text" name="password" form="formulario_registro" required></td>
		</tr>
		<tr>
			<td><label for="nombre">Nombre</label></td>
			<td><input type="text" name="nombre" form="formulario_registro" required></td>
		</tr>
		<tr>
			<td><label for="apellido">Apellido</label></td>
			<td><input type="text" name="apellido" form="formulario_registro" required></td>
		</tr>
		<tr>
			<td><label for="correo">Correo</label></td>
			<td><input type="text" name="correo" form="formulario_registro" required></td>
		</tr>
		<tr>
			<td><label for="tipo">Tipo</label></td>
			<td>
				<!-- Es importante llamar a todos los radio con el mismo nombre, para que cuando el usuario seleccione una las otras se desactiven. -->
				<label><input type="radio" name="tipo" value="a" id="tipo_0" form="formulario_registro" required>Administrador</label><br/> 
				<label><input type="radio" name="tipo" value="c" id="tipo_2" form="formulario_registro" required>Cliente</label><br/>
			</td>
		</tr>
		<tr>
			<td><input type="submit" value="Registrarse" form="formulario_registro"></td>
		</tr>
	</table>

<%
if (request.getAttribute("mensaje") != null) {
	out.print(request.getAttribute("mensaje"));
}
%>
</body>
</html>