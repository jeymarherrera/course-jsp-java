<%-- 
    Document   : login.jsp
    Created on : Nov 21 19, 2020, 11:16:32 AM
    Author     : jeyma
--%>

<%@page import="Procesos.Login"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String user = request.getParameter("user");
    String password = request.getParameter("pass");
    
    Login login = new Login();
    int id = login.LoginUser(user, password);
    if(id > 0){
        out.println("Exito");
        session.setAttribute("userId", id);
        session.setAttribute("userName", user);
        %>
        <a href="../index.jsp">Ir al registro de frutas</a>
<%
    }else{
        out.println("Error al iniciar sesion");
        %>
        <a href="<%= request.getRequestURL() %>">Regresar</a>
<%
    }
%>
