package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.Representation;

@Setter
@Getter
@ToString

public class FlexaryConjunctiveFormula extends BinaryFormula {

    public FlexaryConjunctiveFormula(Element element) {
        super(element);
    }

    @Override
    public void preProcess() {
        super.preProcess();
    }

    @Override
    public void process() { super.process(); }

    @Override
    public void postProcess() {
        super.postProcess();
    }

    @Override
    public Representation lpRepr() {
        //TODO to correct
        return new Representation("true");
    }
}
