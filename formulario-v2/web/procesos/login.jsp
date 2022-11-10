<%@page import="procesos.ProcesosUsuarios"%>
<%@page import="entidades.Usuarios"%>
<%    
    String user = request.getParameter("user");    
    String pass = request.getParameter("pass");

    Usuarios usuario = new Usuarios();
    usuario.setUsuario(user);
    usuario.setContrasena(pass);
    
    ProcesosUsuarios procesosUsuarios = new ProcesosUsuarios();
    Usuarios validUser = procesosUsuarios.VerificarUsuarios(usuario);

    if(validUser != null){
        session.setAttribute("nombre", validUser.getNombre());
        response.sendRedirect("../index.jsp");
    }else{
        out.println("No existe el usuario");
        
        session.setAttribute("error", 1);
        response.sendRedirect("../login.jsp");
    }
%>