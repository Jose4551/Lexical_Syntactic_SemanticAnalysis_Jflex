/* AGUIRRE GAYTAN ADRIAN
CALLEROS RODRIGUEZ JOSE GUILLERMO
LOPEZ ZEPEDA CARLOS
PULIDO VAZQUEZ MARIANA PAOLA
c++*/
package demo_cup;

/*more package*/
import java_cup.runtime.*;
%%
%public
%class Scannercpp
%unicode
%cup
%line
%column
%standalone

%{
    private void descripcion(String token, String mensaje)
    {
    System.out.println("Linea: "+(yyline+1)+
                       " Columna: "+(yycolumn+1)+
                       " token: "+token+" --> "+mensaje);
    }

    private Symbol symbol(int type, Object value)
    {
        return new Symbol(type, (yyline+1), (yycolumn+1), value);}
%}

%%

/*ESPACIOS*/
[ \t\n\r]+  {/* ignorar espacion en blanco*/}

/*COMENTARIO*/
\/\/.*  {
        descripcion(yytext(),"COMENTARIO UNILINEA");
        return symbol(sym.COMENTARIOU, yytext());
}
\/\*([^*]|\*+[^\/])*\*\/    {
        descripcion(yytext(),"COMENTARIO MULTILINEA");
        return symbol(sym.COMENTARIOM, yytext());
}

/*Palabras reservadas*/

"int" { 
    descripcion(yytext(), "Tipo de dato int");
    return symbol(sym.INT, yytext());
}

"long" { 
    descripcion(yytext(), "Tipo de dato long");
    return symbol(sym.LONG, yytext());
}
"float" { 
    descripcion(yytext(), "Tipo de dato float");
    return symbol(sym.FLOAT, yytext());
}

"bool" { 
    descripcion(yytext(), "Tipo de dato boolean");
    return symbol(sym.BOOL, yytext());
}
"const" { 
    descripcion(yytext(), "palabra reservada de constante");
    return symbol(sym.CONST, yytext());
}

"char" { 
    descripcion(yytext(), "Tipo de dato char");
    return symbol(sym.CHAR, yytext()); 
}
"string" { 
    descripcion(yytext(), "Tipo de dato string");
    return symbol(sym.STRING, yytext()); 
}

"double" { 
    descripcion(yytext(), "Tipo de dato double");
    return symbol(sym.DOUBLE, yytext()); 
}
"do" { 
    descripcion(yytext(), "Inicia un do-while");
    return symbol(sym.DO, yytext()); 
}
"false" { 
    descripcion(yytext(), "Valor booleano falso");
    return symbol(sym.FALSE, yytext()); 
}

"mutable" { 
    descripcion(yytext(), "Quita propiedad const de un objeto");
    return symbol(sym.MUTABLE, yytext()); 
}

"namespace" { 
    descripcion(yytext(), "Particiona espacio de nombres al definir");
    return symbol(sym.NAMESPACE, yytext()); 
}

"new" { 
    descripcion(yytext(), "Crea un objeto");
    return symbol(sym.NEW, yytext()); 
}

"operator" { 
    descripcion(yytext(), "Crea funciones operador sobrecargadas");
    return symbol(sym.OPERATOR, yytext()); 
}

"private" { 
    descripcion(yytext(), "Declara componentes privados de una clase");
    return symbol(sym.PRIVATE, yytext()); 
}

"protected" { 
    descripcion(yytext(), "Declara componentes protegidos de una clase");
    return symbol(sym.PROTECTED, yytext()); 
}

"public" { 
    descripcion(yytext(), "Declara componentes públicos de una clase");
    return symbol(sym.PUBLIC, yytext());
}

"register" { 
    descripcion(yytext(), "Almacena una variable en un registro máquina");
    return symbol(sym.REGISTER, yytext()); 
}

"return" { 
    descripcion(yytext(), "Retorna desde una función");
    return symbol(sym.RETURN, yytext()); 
}

"short" { 
    descripcion(yytext(), "Variable de tipo entero corto");
    return symbol(sym.SHORT, yytext()); 
}

"signed" { 
    descripcion(yytext(), "Variable entera como tipo signo");
    return symbol(sym.SIGNED, yytext()); 
}

"sizeof" { 
    descripcion(yytext(), "Obtiene la capacidad de memoria");
    return symbol(sym.SIZEOF, yytext()); 
}

"static" { 
    descripcion(yytext(), "Crea almacenamiento para una variable");
    return symbol(sym.STATIC, yytext()); 
}

"struct" { 
    descripcion(yytext(), "Define una estructura");
    return symbol(sym.STRUCT, yytext()); 
}

"switch" { 
    descripcion(yytext(), "Define una estructura");
    return symbol(sym.SWITCH, yytext()); 
}

"template" { 
    descripcion(yytext(), "Crea una plantilla para código de funciones u objetos");
    return symbol(sym.TEMPLATE, yytext()); 
}

"this" { 
    descripcion(yytext(), "Puntero privado al objeto actual de una clase");
    return symbol(sym.THIS, yytext()); 
}

"throw" { 
    descripcion(yytext(), "Arroja una excepción");
    return symbol(sym.THROW, yytext()); 
}

"true" { 
    descripcion(yytext(), "Valor booleano verdadero");
    return symbol(sym.TRUE, yytext()); 
}

"try" { 
    descripcion(yytext(), "Ejecuta código que puede lanzar una excepción");
    return symbol(sym.TRY, yytext()); 
}

"typedef" { 
    descripcion(yytext(), "Crea un alias para un tipo de datos");
    return symbol(sym.TYPEDEF, yytext()); 
}

"typeid" { 
    descripcion(yytext(), "Retorna información sobre un objeto");
    return symbol(sym.TYPEID, yytext()); 
}

"typename" { 
    descripcion(yytext(), "Declara que el próximo identificador es un tipo de datos");
    return symbol(sym.TYPENAME, yytext()); 
}

"union" { 
    descripcion(yytext(), "Funde múltiples valores en una misma ubicación en la memoria");
    return symbol(sym.UNION, yytext()); 
}

"unsigned" { 
    descripcion(yytext(), "Declara variable entera como sin signo");
    return symbol(sym.UNSIGNED, yytext()); 
}

"using" { 
    descripcion(yytext(), "Importa un nombre o símbolo de un namespace en el ámbito actual");
    return symbol(sym.USING, yytext()); 
}

"virtual" { 
    descripcion(yytext(), "Crea una función método que puede ser reemplazada por clases derivadas");
    return symbol(sym.VIRTUAL, yytext()); 
}

"void" { 
    descripcion(yytext(), "Tipo de dato void");
    return symbol(sym.VOID, yytext()); 
}

"volatile" { 
    descripcion(yytext(), "Factor externo al programa");
    return symbol(sym.VOLATILE, yytext()); 
}

"while" { 
    descripcion(yytext(), "Inicia o termina un bucle");
    return symbol(sym.WHILE, yytext()); 
}

"using namespace" { 
    descripcion(yytext(), "Declaración de package");
    return symbol(sym.PACKAGE, yytext()); 
}

"#include" { 
    descripcion(yytext(), "Declaración de importaciones");
    return symbol(sym.IMPORT, yytext()); 
}

"class" { 
    descripcion(yytext(), "Declaración de clase");
    return symbol(sym.CLASS, yytext()); 
}
"if" { 
    descripcion(yytext(), "Condicional if");
    return symbol(sym.IF, yytext()); 
}
"else" { 
    descripcion(yytext(), "Condicional else");
    return symbol(sym.ELSE, yytext()); 
}
"for" { 
    descripcion(yytext(), "estructura de ciclo for");
    return symbol(sym.FOR, yytext()); 
}
"cout" { 
    descripcion(yytext(), "impresion");
    return symbol(sym.COUT, yytext()); 
}


/*SIMBOLOS*/
"=" { 
    descripcion(yytext(), "Asignacion");
    return symbol(sym.ASIGNACION, yytext());
}

"," { 
    descripcion(yytext(), "Es una coma");
    return symbol(sym.COMA, yytext());
}
"." { 
    descripcion(yytext(), "Es un punto");
    return symbol(sym.PUNTO, yytext());
}

";" { 
    descripcion(yytext(), "Punto y coma");
    return symbol(sym.PUNTO_COMA, yytext()); 
}

":" {
    descripcion(yytext(), "DOS PUNTOS");
    return symbol(sym.DOS_PUNTOS, yytext());
}

"{" { 
    descripcion(yytext(), "Llave de apertura");
    return symbol(sym.LLAVE_APER, yytext()); 
}

"}" { 
    descripcion(yytext(), "Llave de cierre");
    return symbol(sym.LLAVE_CERR, yytext()); 
}

"(" {
    descripcion(yytext(), "PARENTESIS DE APERTURA");
    return symbol(sym.PARENTESIS_APERTURA, yytext());
}

")" {
    descripcion(yytext(), "PARENTESIS DE CIERRE");
    return symbol(sym.PARENTESIS_CIERRE, yytext());
}

"[" {
    descripcion(yytext(), "CORCHETE DE APERTURA");
    return symbol(sym.CORCHETE_APERTURA, yytext());
}

"]" {
    descripcion(yytext(), "CORCHETE DE CIERRE");
    return symbol(sym.CORCHETE_CIERRE, yytext());
}
"&&" {
    descripcion(yytext(), "Operador logico and");
    return symbol(sym.AND, yytext());
}
"||"    {
    descripcion(yytext(), "Operador logico or");
    return symbol(sym.OR, yytext());
}
"!" {
    descripcion(yytext(), "Operador logico not");
    return symbol(sym.NOT, yytext());
}

"+" {
    descripcion(yytext(), "Operador suma");
    return symbol(sym.OPERADOR_ARITMETICO, yytext());
}
"-" {
    descripcion(yytext(), "Operador resta");
    return symbol(sym.RESTA, yytext());
}
"*" {
    descripcion(yytext(), "Operador multiplicacion");
    return symbol(sym.MULTI, yytext());
}
"/" {
    descripcion(yytext(), "Operador division");
    return symbol(sym.DIVI, yytext());
}

"==" {
    descripcion(yytext(), "Operador comparacion de igualdad");
    return symbol(sym.OPERADOR_RELACIONAL, yytext());
}
"<" {
    descripcion(yytext(), "Operador menor que");
    return symbol(sym.OPERADOR_MEQ, yytext());
}
">" {
    descripcion(yytext(), "Operador mayor que");
    return symbol(sym.OPERADOR_MAQ, yytext());
}
"<="    {
    descripcion(yytext(), "Operador menor igual que");
    return symbol(sym.OPERADOR_MEIQ, yytext());
}
">="    {
    descripcion(yytext(), "Operador mayor igual que");
    return symbol(sym.OPERADOR_MAIQ, yytext());
}
"!="    {
    descripcion(yytext(), "Operador diferente que");
    return symbol(sym.OPERADOR_D, yytext());
}

/*EXPRESIONES*/
//Identificadores
[_A-Za-z]{1}[a-zA-Z0-9]* {
    descripcion(yytext(), "Un identificador");
    return symbol(sym.ID, yytext());
}


[A-Z_][A-Z0-9_]{0,31} {
    descripcion(yytext(), "Es una constante");
    return symbol(sym.CONSTANTE, yytext());
}


'(.)' {
    descripcion(yytext(), "es caracter");
    return symbol(sym.CARACTER, yytext());
}

[0-9]+ {  
    descripcion(yytext(), "Es un numero entero");
    return symbol(sym.ENTERO, yytext());
}



[0-9]{1,10}\.{1}[0-9]{1,2} {
    descripcion(yytext(), "es flotante");
    return symbol(sym.FLOTANTE, yytext());
}



\"([^\"\\\\]|\\\\u[0-9a-fA-F]{4}|\\\\.)*\" {
    descripcion(yytext(), "Cadena");
    return symbol(sym.CADENA, yytext());
}

/*ERROR*/

.   {
 descripcion(yytext(), "No es parte del lenguaje");
 return symbol (sym.ERROR, yytext());
}

