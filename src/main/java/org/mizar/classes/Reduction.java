package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.Keyword;
import org.mizar.lambdapi.LambdaPi;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class Reduction extends Item {

    private Term term1;
    private Term term2;

    public Reduction(Element element) {
        super(element);
        term1 = Term.buildTerm(element.elements().get(0));
        term2 = Term.buildTerm(element.elements().get(1));
    }

    @Override
    public void preProcess() {
        super.preProcess();
        LambdaPi.addComment("Reduction");
    }

    @Override
    public void process() {
        term1.run();
        term2.run();
    }

    @Override
    public void postProcess() {
        String formula = LambdaPi.EQUALITY_PRED;
        formula += term1.lpRepr().repr + " ";
        formula += term2.lpRepr().repr;
        String name = "Red_" + LambdaPi.normalizeMMLId(getElement().getParent().attributeValue(ESXAttributeName.POSITION));
        String args = LambdaPi.argsElement();
        LambdaPi.addStatementWithProof(name,args,formula);
        super.postProcess();
    }
}
