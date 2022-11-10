<%-- 
    Document   : index
    Created on : Nov 21 18, 2020, 1102:12 AM
    Author     : jeyma
--%>

<%@page import="java.util.List"%>
<%@page import="Entidades.Fruta"%>
<%@page import="Procesos.ProcesosFruta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <body>
         <%
             int uid = 0;
             if(session.getAttribute("userId") != null){
                 uid = (int)session.getAttribute("userId");
             }
           
             if(uid > 0){
         %>
         <h2>Hola!<%= session.getAttribute("userName") %></h2>
        <div>
            <h1>Insertar un fruta</h1>
            <form action="procesosJSP/insert.jsp" method="post">
                <input type="text" name="nombre" placeholder="Fruta"> <br>
                <input type="text" name="pais" placeholder="Procedencia"> <br>
                <label>Categoria</label>
                <select name="categoria">
                    <option>Acida</option>
                    <option>Dulce</option>
                    <option>Amarga</option>
                </select>
                <br>
                <input type="submit" value="Enviar datos"/>
            </form>
        </div>
        <section>
            <h2>Historial de Frutas JSP</h2>
            <%
                ProcesosFruta procesoFruta = new ProcesosFruta();
                List<Fruta> frutas = procesoFruta.ObtenerFrutas();
            %>
            <table>
                <thead>
                <th>ID</th>
                <th>NOMBRE</th>
                <th>PROCEDENCIA</th>
                <th>CATEGORIA</th>
                <th>CREADO</th>
                <th>ULTIMA ACTUALIZACION</th>
                </thead>
                <tbody>
                    <%for(Fruta fruta : frutas){%>
                    <tr>
                        <td><%= fruta.getId() %></td>
                        <td><%= fruta.getNombre() %></td>
                        <td><%= fruta.getProcedencia() %></td>
                        <td><%= fruta.getCategoria() %></td>
                        <td><%= fruta.getCreated_at() %></td>
                        <td><%= fruta.getUpdated_at() %></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
                <a href="procesosJSP/logout.jsp">CERRAR SESSION</a>
        </section>
         <%
         }else{
         %>
         <h1> No has iniciado session por favor, iniciar sesion <a href="login.jsp">aqui</a> </h1>
        <%}%>
    </body>
</html>
