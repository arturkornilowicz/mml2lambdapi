package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.LambdaPi;
import org.mizar.lambdapi.Representation;

@Setter
@Getter
@ToString

public class PartialEquationalDefiniens extends PartialDefiniens {

    private Term term;

    public PartialEquationalDefiniens(Element element) {
        super(element);
        term = Term.buildTerm(element.elements().get(0));
    }

    @Override
    public void preProcess() {
        super.preProcess();
    }

    @Override
    public void process() {
        super.process();
        term.run();
    }

    @Override
    public void postProcess() {
        super.postProcess();
    }

    @Override
    public Representation lpRepr() {
        return new Representation(LambdaPi.implication(getGuard().lpRepr().repr,term.lpRepr().repr));
    }
}
