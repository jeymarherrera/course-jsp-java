<%@page import="Procesos.ArticulosDb"%>
<%@page import="Entidades.Articulos"%>
<%
    //Obtener los datos que vienen del formulario o la de vista
    String titulo = request.getParameter("titulo"); 
    String descripcion = request.getParameter("descripcion"); 
    String fecha = request.getParameter("fecha"); 
    String autor = request.getParameter("autor"); 

    //Transformar esos datos a modelos de la tabla
    Articulos articulo = new Articulos();
    articulo.setTitulo(titulo);
    articulo.setAutor(autor);
    articulo.setFecha(fecha);
    articulo.setDescripcion(descripcion);
    
    //Manipular los datos y dar la respuesta
    ArticulosDb articulosDb = new ArticulosDb();
    
    int res = articulosDb.GuardarArticulo(articulo);
    
    if(res != 0){
        session.setAttribute("number", 10);
        session.removeAttribute("errorNumber");
        response.sendRedirect("../../index.jsp");
    }else{
        session.setAttribute("errorNumber", 10);
        response.sendRedirect("../../guardarArticulos.jsp");
    }

%>