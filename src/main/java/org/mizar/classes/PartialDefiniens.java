package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.Keyword;
import org.mizar.lambdapi.LambdaPi;
import org.mizar.lambdapi.Representation;
import org.mizar.misc.*;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class PartialDefiniens extends XMLElement {

    private Formula guard;

    public PartialDefiniens(Element element) {
        super(element);
        guard = Formula.buildFormula(element.elements().get(1));
    }

    public static PartialDefiniens buildPartialDefiniens(Element element) {
        switch (element.getParent().getParent().attributeValue(ESXAttributeName.SHAPE)) {
            case AttributeValues.FORMULA_EXPRESSION:
                return new PartialPredicativeDefiniens(element);
            case AttributeValues.TERM_EXPRESSION:
                return new PartialEquationalDefiniens(element);
            default:
                Errors.error(element, "Missing Element in buildPartialDefiniens [" + element.getParent().getParent().attributeValue(ESXAttributeName.SHAPE) + "]");
                return null;
        }
    }

    @Override
    public void preProcess() {
        super.preProcess();
    }

    @Override
    public void process() {
        guard.run();
    }

    @Override
    public void postProcess() {
        super.postProcess();
    }

}
