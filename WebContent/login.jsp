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
<jsp:include page="respuesta.jsp" flush="true"/>

<center><h1>PAGINA DE REGISTRO PARA AGENTES</h1></center>

<form action="Comprobar.jsp" method="Post">
	<!--  -input name="estado" type="text" value="Estado: "/--> 
         <label>Ingrese el codigo del pais</label>   &nbsp;
         <input type="number" name="idPais"  id="idPais" >
         <input type="submit" value="Consultar"  id="Consultar">
          
</form>

<%
    Integer dato=0;
	
try{

	if(request.getParameter("idPais")!=null){  
		dato =Integer.parseInt((request.getParameter("idPais")));
       // out.print(dato);
	}
}catch(Exception e){
	out.print("Ingrese un pais"); 
}
	
	out.print(Conexion.consultarPaisCodigo(dato)); 

%>

</body>
</html>