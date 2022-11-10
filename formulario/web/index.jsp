<%-- 
    Document   : index
    Created on : Nov 8, 2021, 11:00:11 AM
    Author     : jeymar
--%>
<%@page import="Procesos.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Laboratorio 9</title>
        <link rel="stylesheet" href="css/style.css"/>
    </head>
    <body>
         <h1> Vamos a guardar datos en la BD </h1>
        <form action = "guardar.jsp">
            Usuarios <input type="text" name="user">
            <br>
            Contrasena <input type="password" name="pass">
            <br>
            Edad <input type="number" name="edad">
            <br>
            Apellido <input type="text" name="ape">
            <br>       
            Fecha de Registro <input type="date" name="fecha">
            <br>   
            <input type="submit" value="Guardar">
        </form>
        <h1> Vamos a ver lo que guardamos </h1>
        <a href="mostrar.jsp"> Mostrar </a>
        <% 
            Conexion cn = new Conexion();
        %>
        <script src="js/scripts.js"></script>
    </body>
</html>
