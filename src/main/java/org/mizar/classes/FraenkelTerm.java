package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.LambdaPi;
import org.mizar.lambdapi.Representation;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class FraenkelTerm extends Term {

    private VariableSegments variableSegments;
    private Term term;
    private Formula formula;

    public FraenkelTerm(Element element) {
        super(element);
        variableSegments = new VariableSegments(element.element(ESXElementName.VARIABLE_SEGMENTS));
        term = Term.buildTerm(element.elements().get(1));
        formula = Formula.buildFormula(element.elements().get(2));
    }

    @Override
    public void preProcess() {
        super.preProcess();
    }

    @Override
    public void process() {
        variableSegments.run();
        term.run();
        formula.run();
    }

    @Override
    public void postProcess() {
        super.postProcess();
    }

    @Override
    public Representation lpRepr() {
        return new Representation(LambdaPi.DUMMY_FRAENKEL);
    }
}
