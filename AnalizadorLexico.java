/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package demo_cup;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java_cup.runtime.Symbol;
import java_cup.sym;
import java.io.StringReader;


/**
 *
 * 
 */
public class AnalizadorLexico {
    public static void main(String[] args) throws IOException{
        try{
        Reader lector = new BufferedReader(new FileReader("src/demo_cup/Pruebas.txt"));
        Scannercpp lexico= new Scannercpp(lector);
        String resultado="";
        while(true){
        Symbol token = lexico.next_token();
        
        if (token.sym == sym.EOF){
            resultado +="FIN";
        System.out.println(resultado);
        break;
        }
        
        }
        
        }catch (FileNotFoundException ex){
    
        }catch (IOException ex){
        }
        }
}