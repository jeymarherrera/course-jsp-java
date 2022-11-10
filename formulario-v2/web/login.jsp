<%@include  file="views/template/header.jsp"%>
<section class="pt-4">
    <div class="container px-lg-5">
        <form action="procesos/login.jsp" method="post">
            <div class="row">
                <% 
                    int error = (int)session.getAttribute("error");
                    if(error == 1){
                %>
                    <div class="alert-danger">
                        <span>usuario y contrasena incorrecto</span>
                    </div>
                <%}%>
                <div class="form-group">
                    <label>Usuario</label>
                    <input type="text" class="form-control" name="user" required/>
                </div>
                <div class="form-group">
                    <label>Contrasena</label>
                    <input type="password" class="form-control" name="pass" required/>
                </div>
                <button type="submit" class="btn btn-primary w-100 mt-5 mb-5">Loguear</button> 
            </div>
        </form>
    </div>
</section>

<%@include  file="views/template/footer.jsp"%>