<%@include file="/views/template/header.jsp" %>
<section class="pt-4">
 <div class="container px-lg-5">
     <%@include file="/views/template/error.jsp" %>
     <form action="procesos/articulos/Save.jsp">
         <div class="row">
             <div class="col-6">
                 <label>Titulo</label>
                 <input type="text" name="titulo" class="form-control" />
             </div>
             <div class="col-6">
                 <label>Descripcion</label>
                 <textarea name="descripcion" class="form-control"></textarea>
             </div>
         </div>
         <div class="row">
             <div class="col-6">
                 <label>Fecha</label>
                 <input type="date" name="fecha" class="form-control"/>
             </div>
             <div class="col-6">
                 <label>Autor</label>
                 <input type="text" name="autor" class="form-control"/>
             </div>
         </div>
         <div class="row mt-5 mb-5">
             <button type="submit" class="btn btn-success w-50 ">Enviar Datos</button>                
             <button type="reset" class="btn btn-warning w-50 ">Reiniciar Formulario</button>
         </div>
     </form>
 </div>
</section>
<%@include file="/views/template/footer.jsp" %>
