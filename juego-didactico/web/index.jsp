<%@page import="java.util.List"%>
<%@page import="Entidades.Articulos"%>
<%@page import="Procesos.ArticulosDb"%>
<%@include file="views/template/header.jsp" %>
<!-- Page Content-->
<section class="pt-4">
    <div class="container px-lg-5">
        <!-- Page Features-->
        <%@include file="/views/template/success.jsp" %>
        <%@include file="/views/template/error.jsp" %>
        <div class="row gx-lg-5 pt-5">
            <%
                ArticulosDb articulosDb = new ArticulosDb();
                List<Articulos> articulos = articulosDb.ObtenerTodosArticulos();
                
                for(Articulos articulo : articulos){
            %>
                <div class="col-lg-6 col-xxl-4 mb-5">
                    <div class="card bg-light border-0 h-100">
                        <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                            <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-collection"></i></div>
                            <h2 class="fs-4 fw-bold"><%= articulo.getTitulo() %></h2>
                            <h6 class="fs-6">Creado el <%= articulo.getFecha() %> por <%= articulo.getAutor() %></h6>
                            <p class="mb-0"><%= articulo.getDescripcion() %></p>
                            <div class="row">
                                <a href="procesos/articulos/Delete.jsp?aid=<%= articulo.getId() %>" class="btn btn-danger w-25"> <i class="bi bi-trash"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            <%}%>
        </div>
    </div>
</section>
<%@include file="views/template/footer.jsp" %>

