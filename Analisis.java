/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lexico;

import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;

/**
 *
 * @author Jose4551
 */
public class Analisis {
     public static void main(String[] args) {
        System.out.println("AGUIRRE GAYTAN ADRIAN CALLEROS RODRIGUEZ JOSE GUILLERMO LOPEZ ZEPEDA CARLOS PULIDO VAZQUEZ MARIANA PAOLA \n");
         
        String test = "src/lexico/prueba.txt";

        try (Reader reader = new FileReader(test)) {
            // Crear la instancia del lexer directamente
            Scannercpp lexer = new Scannercpp(reader);

            // Leer tokens y procesarlos
            int token;
            while ((token = lexer.yylex()) != -1) {
                System.out.println("Token: " + token);
                System.out.println("");
            }
        } catch (IOException e) {
            System.err.println("Error al leer el archivo de prueba.");
            e.printStackTrace();
        }
        
        
        System.out.println("\n AGUIRRE GAYTAN ADRIAN CALLEROS RODRIGUEZ JOSE GUILLERMO LOPEZ ZEPEDA CARLOS PULIDO VAZQUEZ MARIANA PAOLA");
    }

    
}