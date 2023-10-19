package org.mizar.lambdapi;

import java.io.*;
import java.util.*;

import org.dom4j.Element;
import org.dom4j.Node;
import org.mizar.application.MML2LambdaPiApplication;
import org.mizar.classes.*;
import org.mizar.misc.*;
import org.mizar.xml_names.*;

public class LambdaPi {

    private static List<String> lpFileContent = new LinkedList<>();
    public static List<String> lpVariables = new LinkedList<>();

    public static boolean addVariables = false;
    public static final String priority = "10";
    public static Integer schemeNumber = 0;

    public static final String patternVariable = "a";
    public static final String EQUALITY_PRED = "=_HIDDEN_1";
    public static final String OBJECT_TYPE = "object_HIDDEN_1";
    public static final String SET_TYPE = "set_HIDDEN_2";

    public static void addText(String string) {
        lpFileContent.add(string);
    }

    public static void addTextList(List<String> list) {
        for (String string : list) {
            lpFileContent.add(string + " ");
        }
    }

    public static void addTextLn(String string) {
        addText(string + "\n");
    }

    public static void addTextLn() {
        addText("\n");
    }

    public static void addTextSp(String string) {
        addText(string + " ");
    }

    public static String normalizeMMLId(String id) {
        return id.replace(":", "_").replace("\\", "_");
    }

    private void addEnviron() {
        String name;
        for (Element element : MML2LambdaPiApplication.environ.getDirective("notations")) {
            name = element.attribute("name").getValue().toLowerCase();
            addTextLn(Keyword.REQUIRE + " " + Keyword.OPEN + " " + MML2LambdaPiApplication.outputDirName + "." + name + ";");
        }
    }

    public void preambule() {
        addTextLn(Keyword.REQUIRE + " " + Keyword.OPEN + " " + "lp.predicatelogic;");
//        addTextLn(Keyword.REQUIRE + " " + Keyword.OPEN + " " + "tla.settheory;");
        if (!MML2LambdaPiApplication.fileName.equalsIgnoreCase("hidden")) {
            addEnviron();
        } else {
            LambdaPi.addTextLn("\nsymbol theGlobalChoice ≔ true;"); // TODO define the global choice
        }
    }

    public void endOfArticle() {
        if (MML2LambdaPiApplication.fileName.equalsIgnoreCase("hidden")) {
        }
    }

    public void primitives() {
        if (false) {
            // set membership
            addTextLn("symbol ∈ : U → U → U;");
            addTextLn("notation ∈ prefix " + priority + ";");
            // inclusion
            addTextLn("symbol ⊆ : U → U → U;");
            addTextLn("notation ⊆ prefix " + priority + ";");
            // equality
            addTextLn("symbol = : U → U → U;");
            addTextLn("notation = prefix " + priority + ";");

            addTextLn("\n");
        }
    }

    public void printFile(String fileName) {
        try {
            FileWriter fileWriter = new FileWriter(fileName);
            for (String string : this.lpFileContent) {
                fileWriter.write(string);
            }
            fileWriter.close();
        } catch (Exception exception) {
        }
    }

    public static String unknown(Class<?> class1) {
        Errors.logUnknown(class1);
        Errors.unknown(class1);
        return "UNKNOWN " + class1.getName() + " ";
    }

    public static String spelling(Element element) {
        String result = element.attributeValue(ESXAttributeName.SPELLING);
        if (result.equals("")) {
            throw new RuntimeException("No spelling in " + element.getName());
        } else {
            return result;
        }
    }

    public static String spelling(XMLElement element) {
        return spelling(element.getElement());
    }

    public static String signature(int arity) {
        String result = "";
        for (int i = 0; i < arity; i++) {
            result += Keyword.UNIVERSE + " " + Keyword.ARROW + " ";
        }
        return result + Keyword.UNIVERSE;
    }

    public static String symbolWithDefinition(String prfFormula, boolean definition) {
        String result = Keyword.SYMBOL + " ";
        result += _Statics.currentDefinitionSymbol;
        if (_Statics.currentDefinitionWithIT) {
            result += Keyword.INTRODEF;
        }
        result += " ";
        result += _Statics.currentPattern.patternLoci(definition);
        result += Keyword.IS + " ";
        result += prfFormula;
        result += Keyword.SEMICOLON;
        return result;
    }

    public static String searchTranslation(String sort, String absolutePatternMMLId, String absoluteConstrMMLId) {
        return MML2LambdaPiApplication.translations.translation(sort, absolutePatternMMLId, absoluteConstrMMLId).lpReprSymbol();
    }

    public static String symbolWithRedefinition(Pattern pattern, int superfluous) {
        //TODO IMPORTANT
        String result = Keyword.SYMBOL + " ";

//        for (PatternDescription patternDescription: MML2LambdaPiApplication.patternDescriptions) {
//            System.out.println(patternDescription);
//        }
//
//        PatternDescription patternDescription = MML2LambdaPiApplication.patternDescriptions.get(
//                "InfixFunctor-Pattern",
//                pattern.getElement().attributeValue(ESXAttributeName.ABSOLUTEORIGPATTERNMMLID),
//                pattern.getElement().attributeValue(ESXAttributeName.ABSOLUTEORIGCONSTRMMLID));


        //Translation oldSymbol = patternDescription.getTranslation();


        String oldSymbol = searchTranslation(
                "InfixFunctor-Pattern",
                pattern.getElement().attributeValue(ESXAttributeName.ABSOLUTEORIGPATTERNMMLID),
                pattern.getElement().attributeValue(ESXAttributeName.ABSOLUTEORIGCONSTRMMLID));


//        System.out.println("OLDS: " + oldSymbol);
        String newSymbol = _Statics.currentDefinitionSymbol
                .replace(normalizeMMLId(pattern.getElement().attributeValue(ESXAttributeName.ABSOLUTEPATTERNMMLID)),
                        normalizeMMLId(pattern.getElement().attributeValue(ESXAttributeName.ABSOLUTEORIGPATTERNMMLID)));
        //newSymbol = pattern.patternUsage();
        //   newSymbol += oldSymbol.lpRepr().repr;
        String origFileName = pattern.getElement().attributeValue(ESXAttributeName.ABSOLUTEORIGPATTERNMMLID).replace(":", "_");
//        System.out.println("VAL = " + origFileName);
        String[] number = pattern.getElement().attributeValue(ESXAttributeName.ABSOLUTEORIGPATTERNMMLID).replace(":", "_").split("_");
        newSymbol = oldSymbol + "_" + origFileName;// + "_" + number[number.length-1];
//        System.out.println("NEWS: " + newSymbol);
        result += _Statics.currentDefinitionSymbol;
        if (_Statics.currentDefinitionWithIT) {
            result += Keyword.INTRODEF;
        }
        result += " ";
        result += _Statics.currentPattern.patternLoci(true);
        result += Keyword.IS + " ";
        int superfl = 0;
        try {
            Integer.parseInt(pattern.getElement().attributeValue(ESXAttributeName.SUPERFLUOUS));
        } catch (Exception exception) {

        }
//        System.out.println(superfl);
        result += newSymbol + " " + _Statics.currentPattern.patternLoci(false, superfluous);
//        System.out.println("result = " + result);
        result += Keyword.SEMICOLON;
        return result;
    }

    public static String privateDefinition(XMLElement element, Arguments arguments) {
        return LambdaPi.spelling(element) + " " + arguments.lpRepr().repr;
    }

    public static String argumentedExpression(Formula expression) {
        if (!expression.getElement().elements().get(0).getName().equals(ESXElementName.ARGUMENTS)) {
            return "";
        }
        // TODO Items with arguments
        RelationFormula relationFormula = (RelationFormula) expression;
        String result = "";
        boolean bracketed;
        result += MML2LambdaPiApplication.translations.translation(relationFormula.getElement()).lpRepr() + " ";
        for (Term term: relationFormula.getArguments().getArguments()) {
            bracketed = !term.getElement().getName().equals(ESXElementName.SIMPLE_TERM);
            if (bracketed) {
                result += Keyword.LB;
            }
            result += term.lpRepr() + " ";
            if (bracketed) {
                result += Keyword.RB;
            }
        }
        return result;
    }

    public static String termWithAdjectives(AdjectiveCluster adjectiveCluster, Term term) {
        String string = "";
        if (adjectiveCluster.getAttributes().size() == 1) {
            string += adjectiveCluster.getAttributes().get(0).lpRepr(term);
        } else {
            int i;
            for (i = 0; i < adjectiveCluster.getAttributes().size() - 1; i++) {
                string += Keyword.AND + " ";
            }
            for (i = 0; i < adjectiveCluster.getAttributes().size() - 2; i++) {
                string += Keyword.LB;
            }
            string += adjectiveCluster.getAttributes().get(0).lpRepr(term) + " ";
            for (i = 1; i < adjectiveCluster.getAttributes().size() - 1; i++) {
                string += adjectiveCluster.getAttributes().get(i).lpRepr(term) + " " + Keyword.RB;
            }
            string += adjectiveCluster.getAttributes().get(i).lpRepr(term);
        }
        return string;
    }

    public static String prfFormula(String prfFormula) {
        return Keyword.PRF + " " + LambdaPi.bracketedExpression(prfFormula);
    }

    public static void addBeginAbort() {
        LambdaPi.addTextLn("\n" + Keyword.BEGIN);
        LambdaPi.addTextLn("  " + Keyword.ABORT + Keyword.SEMICOLON);
    }

    public static String argU(String arg) {
        return bracketedExpression(arg + Keyword.SCOPE + Keyword.UNIVERSE);
    }

    @Deprecated
    public static String argsElementDep(Element element) {
        String result = "";
        //TODO Compute args precisely
        for (Node node : element.selectNodes(".//" + ESXElementName.SIMPLE_TERM)) {
            result += argU(spelling((Element) node)) + " ";
        }
        return result;
    }

    public static String argsElement() {
        String result = "";
        for (Variable variable: _Statics.currentDefinitionItem.getVariables().keySet()) {
            result += argU(spelling(variable.getElement())) + " ";
        }
        return result;
    }

    public static void addStatementWithProof(String name, String args, String statement) {
        LambdaPi.addTextSp("\n" + Keyword.OPAQUE);
        LambdaPi.addTextSp(Keyword.SYMBOL);
        LambdaPi.addTextSp(name);
        if (!args.equals("")) {
            LambdaPi.addTextSp(args);
        }
        LambdaPi.addTextSp(Keyword.SCOPE);
        LambdaPi.addTextSp(prfFormula(statement));
        LambdaPi.addTextSp(Keyword.IS);
        LambdaPi.addBeginAbort();
    }

    public static void addStatementWithAssumptionsAndProof(String name, String args, String assumptions, String statement) {
        LambdaPi.addTextSp("\n" + Keyword.OPAQUE);
        LambdaPi.addTextSp(Keyword.SYMBOL);
        LambdaPi.addTextSp(name);
        if (!args.equals("")) {
            LambdaPi.addTextSp(args);
        }
        LambdaPi.addTextSp(Keyword.SCOPE);
        if (!assumptions.equals("")) {
            LambdaPi.addTextSp(assumptions);
        }
        LambdaPi.addTextSp("\n" + prfFormula(statement));
        LambdaPi.addTextSp(Keyword.IS);
        LambdaPi.addBeginAbort();
    }

    public static String quantifier(String quantifier, String connective, String variable, String type, String scope) {
        String result = quantifier + " " + variable + ", ";
        result += connective + " " + bracketedExpression(type + " " + variable) + " ";
        result += bracketedExpression(scope);
        return result;
    }

    public static String univQuantifier(String variable, String type, String scope) {
        return quantifier(Keyword.AQUANTIFIER,Keyword.IMP,variable,type,scope);
    }
    public static String exQuantifier(String variable, String type, String scope) {
        return quantifier(Keyword.EQUANTIFIER,Keyword.AND,variable,type,scope);
    }

    public static String bracketedExpression(String expression) {
        return Keyword.LB + expression + Keyword.RB;
    }

    public static String binaryConnective(String connective, String arg1, String arg2) {
        return connective + " " + bracketedExpression(arg1) + " " + bracketedExpression(arg2);
    }

    public static String biimplication(String arg1, String arg2) {
        return binaryConnective(Keyword.IFF,arg1,arg2);
    }

    public static String implication(String arg1, String arg2) {
        return binaryConnective(Keyword.IMP,arg1,arg2);
    }

    public static String disjunction(String arg1, String arg2) {
        return binaryConnective(Keyword.OR,arg1,arg2);
    }

    public static String conjunction(String arg1, String arg2) {
        return binaryConnective(Keyword.AND,arg1,arg2);
    }

    public static String negation(String arg) {
        return Keyword.NOT + " " + bracketedExpression(arg);
    }

    public static String longBinaryConnective(String connective,List<String> conjuncts) {
        String result = "";
        if (conjuncts.size() == 0) {
            return result;
        }
        result += conjuncts.get(0);
        for (int i = 1; i < conjuncts.size(); i++) {
            result = connective + " " + bracketedExpression(result) + " " + bracketedExpression(conjuncts.get(i));
        }
        return result;
    }

    public static String comment(String text) {
        return "\n" + Keyword.COMMENT + " " + text;
    }

    public static void addComment(String text) {
        LambdaPi.addTextLn(comment(text));
    }

    public static Integer lociNbr() {
        return _Statics.currentDefinitionItem.getVariables().size();
    }

    public static void addScheme(String name, String args, String assumptions, String statement) {
        LambdaPi.addStatementWithAssumptionsAndProof(name,args,assumptions,statement);
    }

    public static String schemeParameter(Variables variables, TypeList typeList) {
        String result = "";
        int arity = typeList.getTypeList().size();
        for (Variable variable: variables.getVariables()) {
            result += LambdaPi.bracketedExpression(variable.lpRepr().repr + " " + Keyword.SCOPE + " " + LambdaPi.signature(arity)) + " ";
        }
        return result;
    }
}
