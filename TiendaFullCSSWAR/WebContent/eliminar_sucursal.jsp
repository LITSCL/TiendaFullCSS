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
if (usuario != null && usuario.getTipo().equalsIgnoreCase("a")) {  //Aca es cuando se verifica que el usuario est� autenticado.		
%>
	<header class="header">
		<div class="user">
			Has iniciado sesi�n correctamente administrador:
			<%=usuario.getNombre() + " " + usuario.getApellido()%>
			<a href="cerrar_sesion.jsp">Cerrar sesi�n</a>
		</div>
		<div class="logo">
			<h1>PCFactory</h1>
			<br />
			<h3>Tu partner tecnol�gico</h3>
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
	<p>ID a eliminar: ${param.id}</p>
	<p>�Estas seguro que deseas eliminar la sucursal?</p>
	<a href="SucursalControlador?id=${param.id}&opcion=3"><button>Si</button></a>
	<a href="pagina_principal_administrador.jsp"><button class="red">No</button></a>
<%
}
else if (usuario != null && usuario.getTipo().equalsIgnoreCase("c")) {
%>
	<p>
	<header class="header">
		<div class="no-user"></div>
		<div class="logo">
			<h1>PCFactory</h1>
			<br/>
			<h3>Tu partner tecnol�gico</h3>
		</div>
	</header>
	<p>
		Solo los usuarios de tipo administrador pueden ver el contenido <a href="pagina_principal_cliente.jsp">Volver al menu principal</a>
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
			<h3>Tu partner tecnol�gico</h3>
		</div>
	</header>

	<p>
		Debes iniciar sesi�n para poder ver el contenido <a href="index.html">Inicio</a>
	</p>
<%
}
%>
</body>
</html>
