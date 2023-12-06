<%@page import="cl.inacap.tiendafullcssejb.model.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/styles.css" />
<link rel="stylesheet" href="css/responsive.css" />
</head>
<body>
<% 
Usuario usuario = (Usuario)session.getAttribute("usuario");
if (usuario != null && usuario.getTipo().equalsIgnoreCase("c")) {  //Aca es cuando se verifica que el usuario esté autenticado.		
%>
	<header class="header">
		<div class="user">
			Has iniciado sesión correctamente cliente: <%=usuario.getNombre() + " " + usuario.getApellido()%>
			<a href="cerrar_sesion.jsp">Cerrar sesión</a>
		</div>
		<div class="logo">
			<h1>PCFactory</h1>
			<br/>
			<h3>Tu partner tecnológico</h3>
		</div>
	</header>


	<nav class="nav">
		<ul>
			<li><a href="FiltroUtils?opcion=1">Ver poductos</a></li>
		</ul>
	</nav>
<%
}
else if (usuario != null && usuario.getTipo().equalsIgnoreCase("a")) {
%>
	<header class="header">
		<div class="no-user"></div>
		<div class="logo">
			<h1>PCFactory</h1>
			<br/>
			<h3>Tu partner tecnológico</h3>
		</div>
	</header>
	<p>
		Solo los usuarios de tipo cliente pueden ver el contenido 
		<a href="pagina_principal_administrador.jsp">Volver al menu principal</a>
	</p>
<% 
}
else {
%>
	<header class="header">
		<div class="no-user"></div>
		<div class="logo">
			<h1>PCFactory</h1>
			<br/>
			<h3>Tu partner tecnológico</h3>
		</div>
	</header>

	<p>
		Debes iniciar sesión para poder ver el contenido <a href="index.html">Inicio</a>
	</p>
<%
}
%>
</body>
</html>