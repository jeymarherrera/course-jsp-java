/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Procesos;

import Entidades.Fruta;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author jeyma
 */
public class ProcesosFruta {
    Connection cn;
    
    public ProcesosFruta(){
        this.cn = new Conexion().OpenDb();
    }
    
    public int GuardarFruta(Fruta fruta){
        int resultado  = 0;
        try{
            Statement smtm = cn.createStatement();
            String query = "INSERT INTO frutas(nombre,categoria,procedencia,creado_por)";
            query += "VALUES('"+fruta.getNombre()+"','"+fruta.getCategoria()+"','"+fruta.getProcedencia()+"',"+fruta.getCreado_por()+")";
            
            resultado = smtm.executeUpdate(query);
            return resultado;
        }
        catch(Exception ew){
            System.out.println("Error, no se pudo insertar la fruta"+ew.getMessage());
        }
        return resultado;
    }
    
    public List<Fruta> ObtenerFrutas(){
        try{
            
            List<Fruta> frutas = new ArrayList<>();
            
            Statement smtm = cn.createStatement();
            String query = "SELECT * FROM frutas";
            ResultSet result = smtm.executeQuery(query);
            while(result.next()){
                Fruta fruta = new Fruta();
                fruta.setId(result.getInt("id"));
                fruta.setNombre(result.getString("nombre"));
                fruta.setCategoria(result.getString("categoria"));
                fruta.setProcedencia(result.getString("procedencia"));
                fruta.setCreated_at(result.getString("created_at"));
                fruta.setUpdated_at(result.getString("updated_at"));
                
                frutas.add(fruta);
            }
            
            result.close();
            smtm.close();
            
            return frutas;
        }
        catch(Exception ew){
            System.out.println("Error, no se pudo obtener las frutas "+ew.getMessage());
        }
        return null;
    }
}
