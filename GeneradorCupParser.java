/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package demo_cup;

import java.io.File;
import java.io.IOException;

/**
 *
 * @author AGUIRRE GAYTAN ADRIAN
CALLEROS RODRIGUEZ JOSE GUILLERMO
LOPEZ ZEPEDA CARLOS
PULIDO VAZQUEZ MARIANA PAOLA
 */
public class GeneradorCupParser {
    public static void main(String[] args )throws IOException, Exception {
        // parser
        String[] parametros ={
         "-destdir","src\\demo_cup",
            "-parser","Parsercpp",
            "-progress","src\\demo_cup\\cpp.cup"};
        java_cup.Main.main(parametros);
            
        }
    
    
        }