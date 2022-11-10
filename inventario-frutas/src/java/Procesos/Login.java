/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Procesos;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author jeyma
 */
public class Login {
    Connection cn;
    
    public Login(){
        this.cn = new Conexion().OpenDb();
    }
    
    public int LoginUser(String user, String pass){
        try{
            Statement smtm = cn.createStatement();
            String query = "SELECT * FROM usuarios WHERE username = '"+user+"' AND password = '"+pass+"'";
            ResultSet result = smtm.executeQuery(query);
            if(result.next()){
                return result.getInt("id");
            }
        }
        catch(Exception ew){
            System.out.println(ew.getMessage());
        }
        return 0;
    }
}
