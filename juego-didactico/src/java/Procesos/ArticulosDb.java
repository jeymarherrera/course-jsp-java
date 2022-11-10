/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Procesos;

import Entidades.Articulos;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author jeyma
 */
public class ArticulosDb {
    private Connection cn;
    
    public ArticulosDb(){
        Conectar conexion = new Conectar();
        this.cn = conexion.getCn();
    }
    
    public int GuardarArticulo(Articulos articulo){
        try{
            Statement stmt = this.cn.createStatement();
            String query = "EXEC SaveArticulos '"+articulo.getTitulo()+"','"+articulo.getDescripcion()+"','"+articulo.getFecha()+"','"+articulo.getAutor()+"'";
                      
            return stmt.executeUpdate(query);
        }catch(Exception e){
            return 0;
        }
    }
    
    public List<Articulos> ObtenerTodosArticulos(){
        List<Articulos> articulos = new ArrayList<>();
        try{
            Statement stmt = this.cn.createStatement();
            String query = "SELECT * FROM articulos";
                
            ResultSet result = stmt.executeQuery(query);
            while(result.next()){
                Articulos articulo = new Articulos();
                articulo.setTitulo(result.getString("titulo"));
                articulo.setDescripcion(result.getString("descripcion"));
                articulo.setFecha(result.getString("fecha"));
                articulo.setAutor(result.getString("autor"));
                articulo.setId(result.getInt("id_articulo"));
                
                articulos.add(articulo);
            }              
        }catch(Exception e){
            int x = 1;
        }
        return articulos;
    }
    
    public int EliminarArticulo(int aid){
        
        try {
            Statement stmt = this.cn.createStatement();
            String query = "DELETE FROM articulos WHERE id_articulo = "+aid;
            
            return stmt.executeUpdate(query);
        } catch (Exception ex) {
           int x = 1;
        }
        return 0;
    }
}
