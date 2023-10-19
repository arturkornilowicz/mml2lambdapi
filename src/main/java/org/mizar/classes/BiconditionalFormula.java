package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.Keyword;
import org.mizar.lambdapi.LambdaPi;
import org.mizar.lambdapi.Representation;

@Setter
@Getter
@ToString

public class BiconditionalFormula extends BinaryFormula {

    public BiconditionalFormula(Element element) {
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
        String repr1 = getFormula1().lpRepr().repr;
        String repr2 = getFormula2().lpRepr().repr;
        return new Representation(LambdaPi.biimplication(repr1,repr2));
    }
}
