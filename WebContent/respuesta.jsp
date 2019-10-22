<%@page import="ec.gob.agentes.controlador.Conexion"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center><h1>PAGINA DE RESPUESTA PARA AGENTES MASTER</h1></center>

<h2>Hoja membretada</h2>

<% out.print(Conexion.consultarPaisCodigo(56)); %>



</body>
</html>