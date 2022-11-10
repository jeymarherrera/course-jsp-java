<%@include file="views/template/header.jsp" %>   
<section class="pt-4">
    <div class="container px-lg-5">
        <!-- Aqui Ira la logica  -->
        <%
            String nombre,apellido,mensaje;
            String[] motivos;
            
            motivos = request.getParameterValues("motivo");
            nombre = request.getParameter("nombre");
            apellido = request.getParameter("apellido");
            mensaje = request.getParameter("mensaje");
            
            if(motivos != null && nombre != null && apellido != null && mensaje != null){
        %>
        <div class="card col-12 w-100">
            <h3 class="card-title">Querellante: <%= nombre %> <%= apellido %></h3>
            <div class="card-body">
                <p>Mensaje: <%= mensaje %></p>
                <p>Motivos</p>
                <ul>
                    <% for(int i = 0; i < motivos.length; i++){ %>
                    <li><%= motivos[i] %></li>
                    <%}%>
                </ul>

            </div>
        </div>
        <%}else{%>
        <h2>No ha enviado data del formulario</h2>
        <%}%>
    </div>
</section>
<%@include file="views/template/footer.jsp" %>  