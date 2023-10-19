package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.Keyword;
import org.mizar.lambdapi.LambdaPi;
import org.mizar.lambdapi.Representation;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class UniversalQuantifierFormula extends Formula {

    private VariableSegments variableSegments;
    private Restriction restriction;
    private Scope scope;

    public UniversalQuantifierFormula(Element element) {
        super(element);
        variableSegments = new VariableSegments(element.element(ESXElementName.VARIABLE_SEGMENTS));
        if (element.element(ESXElementName.RESTRICTION) != null) {
            restriction = new Restriction(element.element(ESXElementName.RESTRICTION));
        }
        scope = new Scope(element.element(ESXElementName.SCOPE));
    }

    @Override
    public void preProcess() {
        super.preProcess();
    }

    @Override
    public void process() {
        variableSegments.run();
        if (restriction != null) {
            restriction.run();
        }
        scope.run();
    }

    @Override
    public void postProcess() {
        super.postProcess();
    }

    @Override
    public Representation lpRepr() {
        String string = variableSegments.lpRepr().repr;
        String restr = restriction != null ? restriction.lpRepr().repr : "";
        if (restr.equals("")) {
            string += scope.lpRepr();
        } else {
            string += LambdaPi.implication(restr,scope.lpRepr().repr);
        }
        return new Representation(string);
    }
}
