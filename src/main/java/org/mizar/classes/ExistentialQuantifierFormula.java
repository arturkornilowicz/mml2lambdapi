package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.*;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class ExistentialQuantifierFormula extends QuantifierFormula {

    private Scope scope;

    public ExistentialQuantifierFormula(Element element) {
        super(element);
        scope = new Scope(element.element(ESXElementName.SCOPE));
    }

    @Override
    public void preProcess() {
        super.preProcess();
    }

    @Override
    public void process() {
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
        result += LambdaPi.conjunction(types,formula);
        return new Representation(result);
    }
}
