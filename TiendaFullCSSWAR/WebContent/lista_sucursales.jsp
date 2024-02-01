<%@page import="cl.inacap.tiendafullcssejb.model.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<link rel="stylesheet" href="css/styles.css" />
	<link rel="stylesheet" href="css/responsive.css" />
</head>
<body>
<%
Usuario usuario = (Usuario) session.getAttribute("usuario");
if (usuario != null && usuario.getTipo().equalsIgnoreCase("a")) { //Aca es cuando se verifica que el usuario esté autenticado.
%>
	<header class="header">
		<div class="user">
			Has iniciado sesión correctamente administrador: <%=usuario.getNombre() + " " + usuario.getApellido()%>
			<a href="cerrar_sesion.jsp">Cerrar sesión</a>
		</div>
		<div class="logo">
			<h1>PCFactory</h1>
			<br/>
			<h3>Tu partner tecnológico</h3>
		</div>
	</header>

	<nav id="navAdministrador" class="nav">
		<ul>
			<li><a href="agregar_sucursal.jsp">Agregar Sucursal</a></li>
			<li><a href="CategoriaControlador?opcion=5">Agregar Producto</a></li>
			<li><a href="agregar_categoria.jsp">Agregar Categoria</a></li>
			<li><a href="SucursalControlador?opcion=1">Lista Sucursal</a></li>
			<li><a href="ProductoControlador?opcion=1">Lista Producto</a></li>
			<li><a href="CategoriaControlador?opcion=1">Lista Categoria</a></li>
		</ul>
	</nav>
	<table id="tablaAdminSucursales" class="table">
		<tr>
			<th>ID</th>
			<th>Nombre</th>
			<th>Dirección</th>
			<th>Comuna</th>
			<th>Teléfono</th>
			<th>Opción 1</th>
			<th>Opción 2</th>
		</tr>
		<c:forEach items="${sucursales}" var="su">
			<tr>
				<td>${su.id}</td>
				<td>${su.nombre}</td>
				<td>${su.direccion}</td>
				<td>${su.comuna}</td>
				<td>${su.telefono}</td>
				<td><a href="modificar_sucursal.jsp?id=${su.id}&nombre=${su.nombre}&direccion=${su.direccion}&comuna=${su.comuna}&telefono=${su.telefono}">Modificar</a></td>
				<td><a href="eliminar_sucursal.jsp?id=${su.id}">Eliminar</a></td>
			</tr>
		</c:forEach>
	</table>

<%
} else if (usuario != null && usuario.getTipo().equalsIgnoreCase("c")) {
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
		Solo los usuarios de tipo administrador pueden ver el contenido <a href="pagina_principal_cliente.jsp">Volver al menu principal</a>
	</p>
<%
} else {
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


