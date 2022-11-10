package Procesos;

import java.util.logging.Level;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Logger;

public class Conexion{
 

    public Connection getCn()
    { 
        return cn;
    }
    
    private Connection cn;
    
    public Conexion()
    {
        try {       
            //CADENA DE CONEXION ipconfig IPv4
            this.cn = DriverManager.getConnection("jdbc:sqlserver://192.168.0.4/articulos","jeymar","JECAHEBLASQL");
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
