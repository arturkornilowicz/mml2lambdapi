package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.application.MML2LambdaPiApplication;
import org.mizar.lambdapi.*;
import org.mizar.misc.*;
import org.mizar.xml_names.*;
import java.util.*;

@Setter
@Getter
@ToString

abstract public class Pattern extends XMLElement {

    // Added for computing loci
    private Map<Variable,Type> allLoci = new LinkedHashMap<>();
    private List<String > allArgs;
    private Representation symbolRepresentation;

    private Integer arity = 0;

    public Pattern(Element element) {
        super(element);
    }

    public static Pattern buildPattern(Element element) {
        switch (element.getName()) {
            case ESXElementName.ATTRIBUTE_PATTERN:
                return new AttributePattern(element);
            case ESXElementName.CIRCUMFIXFUNCTOR_PATTERN:
                return new CircumfixFunctorPattern(element);
            case ESXElementName.INFIXFUNCTOR_PATTERN:
                return new InfixFunctorPattern(element);
            case ESXElementName.MODE_PATTERN:
                return new ModePattern(element);
            case ESXElementName.PREDICATE_PATTERN:
                return new PredicatePattern(element);
            default:
                Errors.error(element, "Missing Element in buildPattern [" + element.getName() + "]");
                return null;
        }
    }

    @Override
    public void preProcess() {
        super.preProcess();
        allLoci.putAll(_Statics.currentDefinitionItem.getVariables());
        allArgs = allArgs();
        symbolRepresentation = MML2LambdaPiApplication.translations.translation(getElement()).lpRepr();
        if (!getElement().getParent().getName().equals(ESXElementName.PATTERN_SHAPED_EXPRESSION)) {
            MML2LambdaPiApplication.patternDescriptions
                    .add(getElement().getName(),
                            getElement().attributeValue(ESXAttributeName.ABSOLUTEPATTERNMMLID),
                            getElement().attributeValue(ESXAttributeName.ABSOLUTECONSTRMMLID));
        }
        arity = allLoci.size();
        if (getElement().getName().equals(ESXElementName.MODE_PATTERN)) {
            arity++;
        }
    }

    @Override
    public void process() {
        try {
//            arity = Integer.parseInt(getElement().attribute("arity").getValue());
//            if (getElement().getName().equals(ESXElementName.MODE_PATTERN)) {
//                arity++;
//            }
            /*
            if (!getElement().getParent().getName().equals(ESXElementName.PATTERN_SHAPED_EXPRESSION)) {
                String symbol = symbolRepresentation.repr;
                LambdaPi.addTextSp(Keyword.SYMBOL);
//////            LambdaPi.addTextLn(lpRepr().repr);
                LambdaPi.addTextSp(symbol);
                LambdaPi.addTextSp(Keyword.SCOPE);
                LambdaPi.addTextSp(LambdaPi.signature(arity));
                LambdaPi.addTextLn(Keyword.SEMICOLON);
//                if (arity > 0) {
//                    LambdaPi.addTextSp(Keyword.NOTATION);
//                    LambdaPi.addTextSp(symbol);
//                    LambdaPi.addTextSp(Keyword.PREFIX);
//                    LambdaPi.addTextSp(LambdaPi.priority);
//                    LambdaPi.addTextLn(Keyword.SEMICOLON);
//                }
            } */
        } catch (Exception exception) {
            System.out.println(getElement());
            System.out.println(getElement().getName() + " " + LambdaPi.spelling(this));
            exception.printStackTrace();
        }
    }

    @Override
    public void postProcess() {
        super.postProcess();
    }

    @Override
    public Representation lpRepr() {
        String string = "";
        string += patternUsage() + " ";
        return new Representation(string);
    }

    public String patternToUniversalFormula(String type) {
        String result = type; // + LambdaPi.bracketedNotion(patternUsage());
        List<Variable> variables = new LinkedList<>();
        variables.addAll(_Statics.currentDefinitionItem.getVariables().keySet());
        Collections.reverse(variables);
        String vr, tr;
        for (Variable variable: variables) {
            vr = variable.lpRepr().repr;
            tr = _Statics.currentDefinitionItem.getVariables().get(variable).lpRepr(LambdaPi.createSimpleTerm(vr)).repr;
            result = LambdaPi.univQuantifier(vr,tr,result);
        }
        return result;
    }

    public String patternUsage() {
        String result = "";
        String symbol = symbolRepresentation.repr + " ";
        result += symbol;
        //TODO
        if (arity > 0) {
            int a;
            for (Variable variable: _Statics.currentDefinitionItem.getVariables().keySet()) {
                result += LambdaPi.spelling(variable) + " ";
            }
        }
        return result;
    }

    public String patternUsage(Term subject) {
        String result = "";
        String symbol = symbolRepresentation.repr + " ";
        List<Node> loci = getElement().selectNodes(".//" + ESXElementName.LOCUS);
        for (int a = 0; a < arity; a++) {
            result += Keyword.LB;
        }
        int a;
        for (a = 0; a < arity - 1; a++) {
            if (a == 0) {
                result += symbol;
            }
            result += LambdaPi.spelling((Element)loci.get(a)) + Keyword.RB;
        }
        return result + LambdaPi.spelling((Element)loci.get(a)) + Keyword.RB;
    }

    @Deprecated
    public String patternLociDep(boolean definition) {
        String result = "";
        for (Node node: getElement().selectNodes(".//" + ESXElementName.LOCUS)) {
            if (definition) {
                result += LambdaPi.argU(LambdaPi.spelling((Element) node)) + " ";
            } else {
                result += LambdaPi.spelling((Element) node) + " ";
            }
        }
        return result;
    }

    public String patternLoci(boolean definition) {
        String result = "";
        for (Variable variable: allLoci.keySet()) {
            if (definition) {
                result += LambdaPi.argU(variable.lpRepr().repr) + " ";
            } else {
                result += variable.lpRepr().repr + " ";
            }
        }
        return result;
    }

    public String patternLoci(boolean definition, int superfluous) {
        String result = "";
        int all = allLoci.size();
        List<Variable> vars = new LinkedList<>();
        vars.addAll(allLoci.keySet());
        for (int i = 0; i < all - superfluous; i++) {
            if (definition) {
                result += LambdaPi.argU(vars.get(i+superfluous).lpRepr().repr) + " ";
            } else {
                result += vars.get(i+superfluous).lpRepr().repr + " ";
            }
        }
        return result;
    }

    public void addNotationPattern(Pattern original, boolean negated) {
        String string = "";
        if (negated) {
            string += Keyword.NOT + " " + Keyword.LB;
        }
        string += original.patternUsage();
        if (negated) {
            string += Keyword.RB;
        }
        LambdaPi.addTextLn(LambdaPi.symbolWithDefinition(string,true));
    }

    abstract public List<String> allArgs();

    public String addPatternUsage() {
        String string = getSymbolRepresentation().repr + " ";

        //TODO compute correct loci
        for (int i = 0; i < MML2LambdaPiApplication.allPatterns.arityOrigPattern(this,false) - allArgs().size(); i++) {
            string += LambdaPi.DUMMY_ARG + " ";
        }

        return string + String.join(" ",allArgs);
    }
}
