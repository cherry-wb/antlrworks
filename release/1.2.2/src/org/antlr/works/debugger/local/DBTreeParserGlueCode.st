
import java.io.*;
import org.antlr.runtime.*;
import org.antlr.runtime.tree.*;
import org.antlr.runtime.debug.DebugEventSocketProxy;

$import$

public class $class_name$ {

    public static void main(String args[]) throws Exception {
        $java_lexer$ lex = new $java_lexer$(new ANTLRFileStream("$input_file$"));
        CommonTokenStream tokens = new CommonTokenStream(lex);

        $java_parser$ parser = new $java_parser$(tokens);
        $java_parser$.$start_symbol$_return r = parser.$start_symbol$(); 
        CommonTreeNodeStream nodes = new CommonTreeNodeStream(r.tree);
        
        $grammar_name$ walker = new $grammar_name$(nodes);
        try {
            walker.$start_symbol$();
        } catch (RecognitionException e) {
            e.printStackTrace();
        }
    }
}