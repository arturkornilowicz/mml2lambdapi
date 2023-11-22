package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.Representation;

@Setter
@Getter
@ToString

public class OtherwisePredicative extends Otherwise {

    private Formula formula;

    public OtherwisePredicative(Element element) {
        super(element);
        if (element.elements().size() > 0) {
            formula = Formula.buildFormula(element.elements().get(0));
        }
    }

    @Override
    public void preProcess() {
        super.preProcess();
    }

    @Override
    public void process() {
        if (formula != null) {
            formula.run();
        }
    }

    @Override
    public void postProcess() {
        super.postProcess();
    }

    @Override
    public Representation lpRepr() {
        if (formula != null) {
            return formula.lpRepr();
        };
        return null;
    }
}
