/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Procesos;

import Entidades.Preguntas;
import Entidades.Respuestas;
import Entidades.Temas;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author jeyma
 */
public class Jugabilidad {
    private Connection cn;
    
    public Jugabilidad(){
        Conectar conexion = new Conectar();
        this.cn = conexion.getCn();
    }
    
    public Temas ObtenerTemaCompleto(String codigo){
        try{
            Temas tema = new Temas();
            Statement stmt = this.cn.createStatement();
            String query = "SELECT * FROM TEMA WHERE cod_tema = '"+codigo+"'";
            
            ResultSet result = stmt.executeQuery(query);
            while(result.next()){
                tema.setCod_tema(result.getString("cod_tema"));
                tema.setDs_contenido(result.getString("ds_contenido"));
                tema.setNombre(result.getString("nombre"));
                
                tema.setPreguntas(this.ObtenerPreguntasByTema(codigo));
            }
            return tema;
            
        }catch(Exception e){
            int x = 1;
        }
        return null;
    }
    
    private List<Preguntas> ObtenerPreguntasByTema(String cod_tema){
        List<Preguntas> preguntas = new ArrayList<>();
        try{
            Statement stmt = this.cn.createStatement();
            String query = "SELECT * FROM PREGUNTA WHERE cod_tema ='"+cod_tema+"'";
            
            ResultSet result = stmt.executeQuery(query);
            while(result.next()){
                Preguntas pregunta = new Preguntas();
                pregunta.setCod_preg(result.getInt("cod_preg"));
                pregunta.setCod_tema(result.getString("cod_tema"));
                pregunta.setPregunta(result.getString("pregunta"));
                
                pregunta.setRespuestas(this.ObtenerRespuestasByPregunta(pregunta.getCod_preg()));
                
                preguntas.add(pregunta);
            }
            return preguntas;
        }catch(Exception e){
            int x = 1;
        }
        return preguntas;
    }
    
    private List<Respuestas> ObtenerRespuestasByPregunta(int cod_preg){
        List<Respuestas> respuestas = new ArrayList<>();
        try{
            Statement stmt = this.cn.createStatement();
            String query = "SELECT * FROM RESPUESTA WHERE cod_preg="+cod_preg;
            
            ResultSet result = stmt.executeQuery(query);
            while(result.next()){
                Respuestas respuesta = new Respuestas();
                respuesta.setCod_preg(result.getInt("cod_preg"));
                respuesta.setId_opc(result.getString("id_opc").charAt(0));
                respuesta.setOpc_resp(result.getString("opc_resp"));
                respuesta.setResp(result.getString("resp").charAt(0));
                respuesta.setRetroali(result.getString("retroali"));
                             
                respuestas.add(respuesta);
            }
            return respuestas;
        }catch(Exception e){
            int x = 1;
        }
        return respuestas;
    }
}
