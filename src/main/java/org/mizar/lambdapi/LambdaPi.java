package org.mizar.lambdapi;

import java.io.*;
import java.util.*;

import org.dom4j.*;
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
    public static final String DUMMY_ARG = "DUMMY_ARG";
    public static final String DUMMY_FRAENKEL = "DUMMY_FRAENKEL";
    public static final String DUMMY_REPRESENTATION = "REPRESENTATION";

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
    private void numbers() {
        String numbers = """
        
        constant symbol zero : U;
        constant symbol succ (x:U) : U;

        builtin "0"  ≔ zero;
        builtin "+1" ≔ succ;
        """;
        addTextLn(numbers);
    }

    public void primitives() {
        if (MML2LambdaPiApplication.fileName.toUpperCase().equals("HIDDEN")) {
            addTextLn("\nsymbol " + DUMMY_FRAENKEL + " : " + Keyword.UNIVERSE + ";");
            addTextLn("\nsymbol " + DUMMY_ARG + " : " + Keyword.UNIVERSE + ";");

            addTextLn("\nsymbol " + DUMMY_REPRESENTATION + "_" + DUMMY_REPRESENTATION + " : " + Keyword.UNIVERSE + ";");

            String ddd;
            for (int i = 0; i <= 10; i++) {
                ddd = "\nsymbol " + DUMMY_REPRESENTATION + "_" + DUMMY_REPRESENTATION + "_" + i +  " : " + Keyword.UNIVERSE;
                for (int j = 0; j < i; j++) {
                    ddd += " → " + Keyword.UNIVERSE;
                }
                ddd += ";";
                addTextLn(ddd);
            }

            addTextLn("\nsymbol IT : " + Keyword.UNIVERSE + ";");
            numbers();
        }
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
        result += LambdaPi.allLociWithTypesAndFormula(prfFormula);
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

        String newSymbol = _Statics.currentDefinitionSymbol
                .replace(normalizeMMLId(pattern.getElement().attributeValue(ESXAttributeName.ABSOLUTEPATTERNMMLID)),
                        normalizeMMLId(pattern.getElement().attributeValue(ESXAttributeName.ABSOLUTEORIGPATTERNMMLID)));
        //newSymbol = pattern.patternUsage();
        //   newSymbol += oldSymbol.lpRepr().repr;
        String origFileName = pattern.getElement().attributeValue(ESXAttributeName.ABSOLUTEORIGPATTERNMMLID).replace(":", "_");
        String[] number = pattern.getElement().attributeValue(ESXAttributeName.ABSOLUTEORIGPATTERNMMLID).replace(":", "_").split("_");
        newSymbol = oldSymbol + "_" + origFileName;// + "_" + number[number.length-1];
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
        _Statics.computedPatternRepresentation = newSymbol + " " + _Statics.currentPattern.patternLoci(false, superfluous);
        result += _Statics.computedPatternRepresentation;
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
        FormulaWithArguments relationFormula = (FormulaWithArguments) expression;
        String result = "";
        result += MML2LambdaPiApplication.translations.translation(relationFormula.getElement()).lpRepr() + " ";

        //TODO compute correct loci
        for (int i = 0; i < MML2LambdaPiApplication.allPatterns.arityOrigPattern(relationFormula) - relationFormula.getArguments().getArguments().size(); i++) {
            result += LambdaPi.DUMMY_ARG + " ";
        }

        boolean bracketed;
        for (Term term: relationFormula.getArguments().getArguments()) {
            bracketed = _Statics.bracketed(term);
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

            string += Keyword.LB + " ";

            for (i = 0; i < adjectiveCluster.getAttributes().size() - 2; i++) {
                string += Keyword.AND + " " + Keyword.LB;
            }
//            for (i = 0; i < adjectiveCluster.getAttributes().size() - 2; i++) {
//                string += Keyword.LB;
//            }
            string += Keyword.AND + " ";
            string += adjectiveCluster.getAttributes().get(0).lpRepr(term) + " ";
            for (i = 1; i < adjectiveCluster.getAttributes().size() - 1; i++) {
                string += adjectiveCluster.getAttributes().get(i).lpRepr(term) + " " + Keyword.RB;
            }
            string += adjectiveCluster.getAttributes().get(i).lpRepr(term);
            string += Keyword.RB + " ";
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
        result += connective + " " + bracketedNotion(type) + " ";
        result += bracketedNotion(scope);
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

    public static String bracketedNotion(String expression) {
        return expression.contains(" ") ? Keyword.LB + expression + Keyword.RB : expression;
    }

    public static String binaryConnective(String connective, String arg1, String arg2) {
        return connective + " " + bracketedNotion(arg1) + " " + bracketedNotion(arg2);
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
        return Keyword.NOT + " " + bracketedNotion(arg);
    }

    public static String longBinaryConnective(String connective,List<String> conjuncts) {
        String result = "";
        if (conjuncts.size() == 0) {
            return result;
        }
        result += conjuncts.get(0);
        for (int i = 1; i < conjuncts.size(); i++) {
            result = connective + " " + bracketedNotion(result) + " " + bracketedNotion(conjuncts.get(i));
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

    public static SimpleTerm createSimpleTerm(String varname) {
        Element element = DocumentHelper.createElement(ESXElementName.SIMPLE_TERM.toString().replace("-",""))
                .addAttribute(ESXAttributeName.SPELLING, varname);
        return new SimpleTerm(element);
    }

    public static void wrongRepresentation(Element element, Exception exception) {
        String s = "--- Error in Representation of " + element.attributeValue(ESXAttributeName.XMLID);
        System.out.println(s);
        Errors.logException(exception, s);
    }

    public static void print(String string) {
        System.out.println(string);
    }

    public static String computeCurrentLoci() {
        String result = "";
        List<String> types = new ArrayList<>();
        for (Variable variable: _Statics.currentDefinitionItem.getVariables().keySet()) {
            LambdaPi.print(variable.getElement().attributeValue(ESXAttributeName.SPELLING));
        }
        LambdaPi.print(LambdaPi.longBinaryConnective(Keyword.AND,types));
        return LambdaPi.longBinaryConnective(Keyword.AND,types);
    }

    public static String allLociWithTypes() {
        List<String> types = new ArrayList<>();
        String vr;
        for (Variable variable: _Statics.currentDefinitionItem.getVariables().keySet()) {
            vr = variable.lpRepr().repr;
            types.add(_Statics.currentDefinitionItem.getVariables().get(variable).lpRepr(LambdaPi.createSimpleTerm(vr)).repr);
        }
        return LambdaPi.longBinaryConnective(Keyword.AND,types);
    }

    public static String allLociWithTypesAndFormula(String scope) {
        String allLoci = allLociWithTypes();
        if (allLoci.equals("")) {
            return scope;
        } else {
            return LambdaPi.implication(allLoci,scope);
        }
    }
}
