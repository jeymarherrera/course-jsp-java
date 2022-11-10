<%-- 
    Document   : insert
    Created on : Nov 21 18, 2020, 1:31:27 AM
    Author     : jeyma
--%>

<%@page import="Entidades.Fruta"%>
<%@page import="Procesos.ProcesosFruta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insercion</title>
    </head>
    <body>
        <%
            String nombre = request.getParameter("nombre");
            String procedencia = request.getParameter("pais");
            String categoria = request.getParameter("categoria");
            
            Fruta fruta = new Fruta();
            fruta.setNombre(nombre);
            fruta.setCategoria(categoria);
            fruta.setProcedencia(procedencia);
            fruta.setCreado_por((int)session.getAttribute("userId"));
           
            ProcesosFruta procesoFruta = new ProcesosFruta();
            int resultado = procesoFruta.GuardarFruta(fruta);
            if (resultado > 0) {
                    out.println("Exito");
                }else{
                out.println("Error");
            }

        %>
    </body>
</html>
