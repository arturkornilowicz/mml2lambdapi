package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.*;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class UniversalQuantifierFormula extends QuantifierFormula {

    private Restriction restriction;
    private Scope scope;

    public UniversalQuantifierFormula(Element element) {
        super(element);
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
        String result = collectQuantifiers();
        String types = LambdaPi.longBinaryConnective(Keyword.AND, collectVariables());
        String formula = scope.lpRepr().repr;
        String restr = restriction != null ? restriction.lpRepr().repr : "";
        if (restr.equals("")) {
            result += LambdaPi.implication(types,formula);
        } else {
            result += LambdaPi.implication(types, LambdaPi.implication(restr,formula));
        }
        return new Representation(result);
    }
}
