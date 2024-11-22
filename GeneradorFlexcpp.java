
package demo_cup;

/**
 *
 * @author Alumno
 */

import java.io.File;
import java.io.IOException;
public class GeneradorFlexcpp {


    public static void main(String[] args) throws IOException, Exception {
        String pathflex= "src\\demo_cup\\Democup_cpp.flex";
        File file= new File (pathflex);
        jflex.Main.generate(file);
        String[] parametrosLex = {pathflex};
        jflex.Main.generate(parametrosLex);
        
    }
    
}
