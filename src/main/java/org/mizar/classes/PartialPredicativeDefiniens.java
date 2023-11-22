package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.Keyword;
import org.mizar.lambdapi.LambdaPi;
import org.mizar.lambdapi.Representation;
import org.mizar.xml_names.ESXAttributeName;

@Setter
@Getter
@ToString

public class PartialPredicativeDefiniens extends PartialDefiniens {

    private Formula formula;

    public PartialPredicativeDefiniens(Element element) {
        super(element);
        formula = Formula.buildFormula(element.elements().get(0));
    }

    @Override
    public void preProcess() {
        super.preProcess();
    }

    @Override
    public void process() {
        super.process();
        formula.run();
    }

    @Override
    public void postProcess() {
        super.postProcess();
    }

    @Override
    public Representation lpRepr() {
        String guardS = getGuard().lpRepr().repr;
        String formulaS = formula.lpRepr().repr;
        return new Representation(LambdaPi.implication(guardS,formulaS));
    }
}
