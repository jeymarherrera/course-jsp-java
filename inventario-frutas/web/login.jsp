<%-- 
    Document   : login
    Created on : Nov 21 19, 2020, 11:15:31 AM
    Author     : jeyma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>Incio de sesion!</h1>
        <form method="post" action="procesosJSP/login.jsp">
            <input type="text" name="user" placeholder="Usuario" /> <br>
            <input type="password" name="pass" placeholder="Contrasena" /> <br>
            <input type="submit" value="Iniciar sesion" />
        </form>
    </body>
</html>
