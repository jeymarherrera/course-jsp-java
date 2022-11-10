<%-- 
    Document   : logout
    Created on : Nov 21 19, 2020, 4:17:29 AM
    Author     : jeyma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.removeAttribute("userId");
%>
<h3>Sesion terminada, regresar al login <a href="../login.jsp">aqui</a> </h3>
