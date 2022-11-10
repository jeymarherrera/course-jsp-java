/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package procesos;

import entidades.Usuarios;

/**
 *
 * @author jeyma
 */
public class ProcesosUsuarios {
    //En el constructor de la clase, va la conexion a la BD

    public Usuarios VerificarUsuarios(Usuarios user){
        try{
            //Aqui va la logica para verificar por BD
            if(user.getUsuario().equals("juanz") && user.getContrasena().equals("123456")){
                Usuarios usuario = new Usuarios();
                usuario.setUsuario(user.getUsuario());
                usuario.setContrasena(user.getContrasena());
                usuario.setNombre("Juan Antonio Zamora Arosemena");
                return usuario;
            }
        }catch(Exception e){
            
        }
        return null;
    }
}
