/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Procesos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author jeyma
 */
public class Conexion {
    public Connection OpenDb(){
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost/frutasDB", "root", "");
        } catch (ClassNotFoundException ex) {
            System.out.println("Error, no encontramos la clase MYSQL");
        } catch (SQLException ex) {
            System.out.println("Error, conexion BD");
        }
        return null;
    }
}
