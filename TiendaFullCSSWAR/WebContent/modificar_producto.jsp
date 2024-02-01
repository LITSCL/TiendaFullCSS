<%@page import="cl.inacap.tiendafullcssejb.model.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

	<form action="ProductoControlador" method="GET" id="formmulario_modificar_produco"></form>
	<table>
		<tr>
			<td><label for="id">ID</label></td>
			<td><input type="number" name="id" form="formmulario_modificar_produco" value="${param.id}" required readonly></td>
		</tr>
		<tr>
			<td><label for="nombre">Nombre</label></td>
			<td><input type="text" name="nombre" form="formmulario_modificar_produco" value="${param.nombre}" required></td>
		</tr>
		<tr>
			<td><label for="descripcion">Descripción</label></td>
			<td><input type="text" name="descripcion" form="formmulario_modificar_produco" value="${param.descripcion}" required></td>
		</tr>
		<tr>
			<td><label for="precio">Precio</label></td>
			<td><input type="number" name="precio" form="formmulario_modificar_produco" value="${param.precio}" required></td>
		</tr>
		<tr>
			<td><label for="stock">Stock</label></td>
			<td><input type="number" name="stock" form="formmulario_modificar_produco" value="${param.stock}" required></td>
		</tr>
		<tr>
			<td><label for="stockMinimo">Stock Minimo</label></td>
			<td><input type="number" name="stockMinimo" form="formmulario_modificar_produco" value="${param.stockMinimo}" required></td>
		</tr>
		<!-- Acá hay que trae las categorias, mostrarlas y que el usuario las elija (Se debe tomar el ID del objeto) -->
		<tr>
			<td><label for="categoria">Categoría ID</label></td>
			<td><input type="number" name="categoria" form="formmulario_modificar_produco" value="${param.categoria}" required></td>
		</tr>
		<tr>
			<td><button type="submit" value="4" form="formmulario_modificar_produco" name="opcion">Modificar</button></td>
		</tr>
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
		Solo los usuarios de tipo administrador pueden ver el contenido 
		<a href="pagina_principal_cliente.jsp">Volver al menu principal</a>
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