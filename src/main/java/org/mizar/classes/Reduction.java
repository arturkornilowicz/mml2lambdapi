package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.Keyword;
import org.mizar.lambdapi.LambdaPi;
import org.mizar.xml_names.ESXAttributeName;
import org.mizar.xml_names.ESXElementName;

@Setter
@Getter
@ToString

public class Reduction extends Item {

    private Redex redex;
    private Reduct reduct;

    public Reduction(Element element) {
        super(element);
        redex = new Redex(element.element(ESXElementName.REDEX));
        reduct = new Reduct(element.element(ESXElementName.REDUCT));
    }

    @Override
    public void preProcess() {
        super.preProcess();
        LambdaPi.addComment(ESXElementName.REDUCTION);
    }

    @Override
    public void process() {
        redex.run();
        reduct.run();
    }

    @Override
    public void postProcess() {
        String name = "Red_" + LambdaPi.normalizeMMLId(getElement().getParent().attributeValue(ESXAttributeName.POSITION));
        String args = LambdaPi.argsElement();
        String formula = LambdaPi.EQUALITY_PRED + " " + redex.lpRepr().repr + " " + reduct.lpRepr().repr;
        formula = LambdaPi.allLociWithTypesAndFormula(formula);
        LambdaPi.addStatementWithProof(name,args,formula);
        super.postProcess();
    }
}
