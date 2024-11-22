package demo_cup;


import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;

public class AnalizadorSintactico {
    public static void main(String[] args) throws IOException {
       
        
        System.out.println("AGUIRRE GAYTAN ADRIAN");
        System.out.println("CALLEROS RODRIGUEZ JOSE GUILLERMO");
        System.out.println(" LOPEZ ZEPEDA CARLOS");
        System.out.println("PULIDO VAZQUEZ MARIANA PAOLA");
        Reader lector = new BufferedReader(new FileReader("src/demo_cup/Pruebas.txt"));
        Scannercpp lexer = new Scannercpp(lector);
        Parsercpp parser = new Parsercpp(lexer);

        try {
            parser.parse();
            System.out.println("Analisis correcto");
        } catch (Exception ex) {
            System.out.println("Error durante el analisis \n" + ex.getMessage());
        }
        
        System.out.println("AGUIRRE GAYTAN ADRIAN");
        System.out.println("CALLEROS RODRIGUEZ JOSE GUILLERMO");
        System.out.println(" LOPEZ ZEPEDA CARLOS");
        System.out.println("PULIDO VAZQUEZ MARIANA PAOLA");
}
}