/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lexico;

import jflex.Main;
/**
 *
 * @author DocentesUTJCCD
 */
public class Generador {
    public static void main(String[] args) {
        // Define las rutas del archivo JFlex y el directorio de salida
        String jflex = "src//lexico//lexico_cpp.flex";

        // Configura los argumentos para JFlex
        String[] jflexArgs = { jflex };

        try {
            // Llama al método main de JFlex.Main para generar el lexer
            Main.generate(jflexArgs);
            System.out.println("Lexer generado con exito " );
        } catch (Exception e) {
            System.err.println("Error al generar el lexer.");
            e.printStackTrace();
            System.exit(1);
        }
    }
}