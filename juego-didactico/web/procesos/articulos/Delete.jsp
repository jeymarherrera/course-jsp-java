<%@page import="Procesos.ArticulosDb"%>
<%
    //Obtenemos los datos de la peticion
    int aid = Integer.parseInt(request.getParameter("aid"));
    
    //Manipular los datos y obtener el resultado
    ArticulosDb articulosDb = new ArticulosDb();
    int res = articulosDb.EliminarArticulo(aid);
    
    if(res != 0){
        session.setAttribute("number", 11);
        session.removeAttribute("errorNumber");
        response.sendRedirect("../../index.jsp");
    }else{
        session.setAttribute("errorNumber", 11);
        session.removeAttribute("number");
        response.sendRedirect("../../index.jsp");
    }

%>