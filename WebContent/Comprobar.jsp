<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page session="true" %>

<%
String dato="";

try{

	if(request.getParameter("idPais")!=null){  
		dato =request.getParameter("idPais");
       // out.print(dato);
	}
}catch(Exception e){
	out.print("Ingrese un pais"); 
}

if(dato.equals("ECUADOR")){
	HttpSession sesionOk = request.getSession();
	sesionOk.setAttribute("dato",dato);

%>

<jsp:forward page="respuesta.jsp" />
<%} else{%>
<jsp:forward page="login.jsp">

<jsp:param name="error" value="Ha ocurrido un error...usuario no registrado"/>

</jsp:forward>
<% } %>


</body>
</html>