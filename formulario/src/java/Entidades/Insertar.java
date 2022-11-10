
package Entidades;

import Entidades.Usuarios;
import Procesos.Conexion;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import static java.util.Arrays.stream;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Insertar {
    Connection cn;
    
    public Insertar() {
       try {       
            //CADENA DE CONEXION ipconfig IPv4
            this.cn = DriverManager.getConnection("jdbc:sqlserver://192.168.0.4/articulos","jeymar","JECAHEBLASQL");
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public int InsertarUsuario(Usuarios user) throws SQLException
    {
        int resultado = 0;
        try
        {
           Statement stmt = cn.createStatement();
           String query ="INSERT INTO usuarios(username,password,fecha,nombre,apellido,edad)";
           query += "VALUES('"+user.getUsuario() +"','"+ user.getApellido()+"','"+user.getEdad()+")";
           
           resultado = stmt.executeUpdate(query);
           
           return resultado;
        }
        catch (SQLException ex)
        {
            System.out.println("Error al registrar driver de MySQL: " + ex);
                Logger.getLogger(Insertar.class.getName()).log(Level.SEVERE, null, ex);  
        }
        finally 
        {
            cn.close();  // Multiple streams were opened. Only the last is closed.
        }
        return resultado;
    }
}

