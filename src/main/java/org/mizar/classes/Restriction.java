package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.Keyword;
import org.mizar.lambdapi.Representation;

@Setter
@Getter
@ToString

public class Restriction extends XMLElement {

    private Formula formula;

    public Restriction(Element element) {
        super(element);
        formula = Formula.buildFormula(element.elements().get(0));
    }

    @Override
    public void preProcess() {
        super.preProcess();
    }

    @Override
    public void process() {
        formula.run();
    }

    @Override
    public void postProcess() {
        super.postProcess();
    }

    @Override
    public Representation lpRepr() {
        return formula.lpRepr();
    }
}
