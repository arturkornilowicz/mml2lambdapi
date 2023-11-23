package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.Keyword;
import org.mizar.lambdapi.LambdaPi;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class Identify extends Item {

    private PatternShapedExpression leftPattern;
    private PatternShapedExpression rightPattern;
    private LociEqualities lociEqualities;

    public Identify(Element element) {
        super(element);
        leftPattern = new PatternShapedExpression(element.elements(ESXElementName.PATTERN_SHAPED_EXPRESSION).get(0));
        rightPattern = new PatternShapedExpression(element.elements(ESXElementName.PATTERN_SHAPED_EXPRESSION).get(1));
        lociEqualities = new LociEqualities(element.element(ESXElementName.LOCI_EQUALITIES));
    }

    @Override
    public void preProcess() {
        super.preProcess();
        LambdaPi.addComment(ESXElementName.IDENTIFY);
    }

    @Override
    public void process() {
        leftPattern.run();
        rightPattern.run();
        lociEqualities.run();
    }

    @Override
    public void postProcess() {
        String name = "Idf_" + LambdaPi.normalizeMMLId(getElement().getParent().attributeValue(ESXAttributeName.POSITION));
        String args = LambdaPi.argsElement();
        String formula = LambdaPi.EQUALITY_PRED + " "
                + patt(leftPattern.getPattern()) + " "
                + patt(rightPattern.getPattern());
        formula = LambdaPi.allLociWithTypesAndFormula(formula);
        LambdaPi.addStatementWithProof(name,args,formula);
        super.postProcess();
    }

    private String patt(Pattern pattern) {
        return LambdaPi.bracketedExpression(pattern.addPatternUsage());
    }
}
