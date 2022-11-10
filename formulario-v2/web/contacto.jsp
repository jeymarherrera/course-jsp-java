<%@include file="views/template/header.jsp" %>

<section class="pt-4">
    <div class="container px-lg-5">
        <h2>Contactenos</h2>
        <form action="contact.jsp" method="post" class="mb-5">
            <div class="row">
                <div class="col-6">
                    <div class="form-group">
                        <label>Nombre</label>
                        <input type="text" class="form-control" name="nombre" required/>
                    </div>
                </div>
                <div class="col-6">
                    <div class="form-group">
                        <label>Apellido</label>
                        <input type="text" class="form-control" name="apellido" required/>
                    </div>
                </div>
                <div class="col-6">
                    <div class="form-group">
                        <label>Motivos</label>
                        <input type="checkbox"  name="motivo" value="queja"/> Queja
                        <input type="checkbox"  name="motivo" value="consulta"/> Consulta
                        <input type="checkbox"  name="motivo" value="duda"/> Duda
                        <input type="checkbox"  name="motivo" value="otros"/> Otros
                    </div>
                </div>
                <div class="col-12">
                    <div class="form-group">
                        <label>Mensaje</label>
                        <textarea class="form-control" name="mensaje"></textarea>
                    </div>
                </div>
                 <div class="col-12">
                     <button type="submit" class="btn btn-warning btn-block mt-2 w-100">Enviar</button>
                </div>
            </div>
        </form>
    </div>
</section>

<%@include file="views/template/footer.jsp" %>