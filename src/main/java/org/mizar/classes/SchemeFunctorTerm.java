package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.xml_names.ESXAttributeName;

@Setter
@Getter
@ToString

public class SchemeFunctorTerm extends TermWithArguments {

    public SchemeFunctorTerm(Element element) {
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
    public String nameOper() {
        return getElement().attributeValue(ESXAttributeName.SPELLING);
    }
}
