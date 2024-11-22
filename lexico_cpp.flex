/* AGUIRRE GAYTAN ADRIAN
CALLEROS RODRIGUEZ JOSE GUILLERMO
LOPEZ ZEPEDA CARLOS
PULIDO VAZQUEZ MARIANA PAOLA
c++*/
package lexico;
/*more package*/

%%
%public
%class Scannercpp
%unicode
%line
%column
%standalone

%%


/*ESPACIOS*/
[ \t\n\r]+  {/* ignorar espacion en blanco*/}
/*Palabras reservadas*/

bool        { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Tipo de dato boolean ");                
                return tokenscpp.BOOL; 
            }
break       { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Salir de un bucle ");                
                return tokenscpp.BREAK; 
            }
case        { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Define expresión de switch ");                
                return tokenscpp.CASE; 
            }
catch       { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Captura expresión lanzada por un throw ");                
                return tokenscpp.CATCH; 
            }
char        { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Tipo de dato char ");                
                return tokenscpp.CHAR; 
            }
class       { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Declara una clase ");                
                return tokenscpp.CLASS; 
            }
const       { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Declara una variable, función o referencia ");                
                return tokenscpp.CONST; 
            }
continue    { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Salta la iteración en un bucle ");                
                return tokenscpp.CONTINUE; 
            }
default     { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Gestiona el caso por defecto en un switch ");                
                return tokenscpp.DEFAULT; 
            }
delete      { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Borra memoria que ha sido reservada ");                
                return tokenscpp.DELETE; 
            }
do          { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Inicio de un bucle ");                
                return tokenscpp.DO; 
            }
double      { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Tipo de dato double ");                
                return tokenscpp.DOUBLE; 
            }
else        { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Ruta alternativa para un if ");                
                return tokenscpp.ELSE; 
            }
explicit    { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Constructor de una clase para conversiones ");                
                return tokenscpp.EXPLICIT; 
            }
false       { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Valor booleano falso ");                
                return tokenscpp.FALSE; 
            }
friend      { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Función no-miembro como amiga de una clase ");                
                return tokenscpp.FRIEND; 
            }
if          { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Código condicionado de un test ");                
                return tokenscpp.IF; 
            }
inline      { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Función expandida in-situ ");                
                return tokenscpp.INLINE; 
            }
int         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Tipo de dato int ");                
                return tokenscpp.INT; 
            }
long        { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Tipo de dato long ");                
                return tokenscpp.LONG; 
            }
mutable     { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Quita propiedad const de un objeto ");                
                return tokenscpp.MUTABLE; 
            }
namespace   { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Particiona espacio de nombres al definir ");                
                return tokenscpp.NAMESPACE; 
            }
new         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Crea un objeto ");                
                return tokenscpp.NEW; 
            }
operator    { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Crea funciones operador sobrecargadas ");                
                return tokenscpp.OPERATOR; 
            }
private     { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Declara componentes privados de una clase ");                
                return tokenscpp.PRIVATE; 
            }
protected   { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Declara componentes protegidos de una clase ");                
                return tokenscpp.PROTECTED; 
            }
public      { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Declara componentes publicos de una clase ");                
                return tokenscpp.PUBLIC; 
            }
register    { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Almacena una variable en un registro maquina ");                
                return tokenscpp.REGISTER; 
            }
return      { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Retorna desde una funcion ");                
                return tokenscpp.RETURN; 
            }
short       { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Variable de tipo entero corto ");                
                return tokenscpp.SHORT; 
            }
signed      { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Variable entera como tipo signo ");                
                return tokenscpp.SIGNED; 
            }
sizeof      { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Obtiene la capacidad de memoria ");                
                return tokenscpp.SIZEOF; 
            }
static      { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Crea almacenamiento para una variable ");                
                return tokenscpp.STATIC; 
            }
struct      { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Define una estructura ");                
                return tokenscpp.STRUCT; 
            }
switch      { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Define una estructura ");                
                return tokenscpp.SWITCH; 
            }
template    { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Crea una plantilla para código de funciones u objetos ");                
                return tokenscpp.TEMPLATE; 
            }
this        { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Puntero privado al objeto actual de una clase ");                
                return tokenscpp.THIS; 
            }
throw       { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Arroja una excepción ");                
                return tokenscpp.THROW; 
            }
true        { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Valor booleano verdadero ");                
                return tokenscpp.TRUE; 
            }
try         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Ejecuta codigo que puede lanzar una excepcion ");                
                return tokenscpp.TRY; 
            }
typedef      { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Crea un alias para un tipo de datos ");                
                return tokenscpp.TYPEDEF; 
            }
typeid      { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Retorna información sobre un objeto ");                
                return tokenscpp.TYPEID; 
            }
typename    { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Declara que el próximo identificador es un tipo de datos ");                
                return tokenscpp.TYPENAME; 
            }
union       { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Funde múltiples valores en una misma ubicación en la memoria ");                
                return tokenscpp.UNION; 
            }
unsigned    { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Declara variable entera como sin signo ");                
                return tokenscpp.UNSIGNED; 
            }
using       { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Importa un nombre o símbolo de un namespace en el ámbito actual ");                
                return tokenscpp.USING; 
            }
virtual     { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Crea una función método que puede ser reemplazada por clases derivadas ");                
                return tokenscpp.VIRTUAL; 
            }
void        { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Tipo de dato void ");                
                return tokenscpp.VOID; 
            }
volatile    { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Factor externo al programa ");                
                return tokenscpp.VOLATILE; 
            }
while       { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Inicia o termina un bucle ");                
                return tokenscpp.WHILE; 
            }


/*SIMBOLOS*/







/*EXPRESIONES*/
//Identificadores
[a-zA-Z_]{1}[0-9a-zA-Z]{0,31}  {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
    System.out.println(yytext()+" -> un identificador valido");
    return tokenscpp.IDENTIFICADOR;
   }
''[a-zA-Z]  {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
    System.out.println(yytext()+" -> ERROR no puede iniciar un caracter con doble comilla");
    return tokenscpp.CARACTER_ERROR2;
   }
'[a-zA-Z]{1,10}[^'] {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
    System.out.println(yytext()+" -> ERROR el caracter no fue cerrado");
    return tokenscpp.CARACTER_ERROR1;
   }

'[a-zA-Z]{2,10}'  {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
    System.out.println(yytext()+" -> ERROR solo se puede agregar caracteres de 1 letra");
    return tokenscpp.CARACTER_ERROR;
   }

'[a-zA-Z]'  {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
    System.out.println(yytext()+" -> es un caracter");
    return tokenscpp.CARACTER;
   }
[0-9]{1,10}\.{2,20}[0-9]{1,2} {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
    System.out.println(yytext()+" -> ERROR debe de usar un solo punto para flotante");
    return tokenscpp.FLOTANTE_ERROR;
   }
[0-9]{1,10}\.[0-9]{1,10}\.[0-9]{1,10}    {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
    System.out.println(yytext()+" -> ERROR no puede poner numeros con puntos de forma consecutiva");
    return tokenscpp.FLOTANTE_ERROR1;
   }
[0-9]{1,10}\.[0-9]{1,10}\.   {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
    System.out.println(yytext()+" -> ERROR no puede poner un segundo punto despues de sus decimales");
    return tokenscpp.FLOTANTE_ERROR2;
   }
[0-9]{1,10}\.{1}[0-9]{1,2}  {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
    System.out.println(yytext()+" -> Es flotante");
    return tokenscpp.FLOTANTE;
   }
&&|\|\| {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
    System.out.println(yytext()+" -> se identifica un operador logico");
    return tokenscpp.OPERADOR_LOGICO;
}
\+|\-|\*|\/ {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
    System.out.println(yytext()+" -> se identifica un operador aritmetico");
    return tokenscpp.OPERADOR_ARITMETICO;
}

[<=|>=|==|!=|<|>]   {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
    System.out.println(yytext()+" -> se identifica un operador relacional");
    return tokenscpp.OPERADOR_RELACIONAL;
}
[0-9]{1,8} {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
    System.out.println(yytext()+" -> es un numero entero");
    return tokenscpp.NUM_ENTERO;
}


(\(|\)|\{|\}|\[|\])   {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
    System.out.println(yytext()+" -> es caracter especial");
    return tokenscpp.ESPECIAL;
}
\/\/.*  {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
    System.out.println(yytext()+" -> es comentario de linea");
    return tokenscpp.COMENTARIO_LINEA;
}
\/\*([^*]|\*+[^\/])*\*\/    {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
    System.out.println(yytext()+" -> es comentario de bloque");
    return tokenscpp.COMENTARIO_BLOQUE;
}

\"[a-zA-Z]*[a-zA-Z]$ {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
    System.out.println(yytext()+" -> ERROR falta cerrar la cadena");
    return tokenscpp.CADENA_ERROR;
}
\"([^\"\\\\]|\\\\u[0-9a-fA-F]{4}|\\\\.)*\" {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
    System.out.println(yytext()+" -> es una cadena");
    return tokenscpp.CADENA;
}
/*ERROR*/

/*no reconocido*/
.  {System.out.println("No es parte del lenguaje");}