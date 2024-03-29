package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.misc.*;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class EqualityKind extends XMLElement {

    public EqualityKind(Element element) {
        super(element);
    }

    public static EqualityKind buildEqualityKind(Element element) {
        switch (element.getName()) {
            case ESXElementName.EQUALITY:
                return new Equality(element);
            case ESXElementName.EQUALITY_TO_ITSELF:
                return new EqualityToItself(element);
            default:
                Errors.error(element, "Missing Element in buildEqualityKind [" + element.getName() + "]");
                return null;
        }
    }

    @Override
    public void preProcess() {
        super.preProcess();
    }

    @Override
    public void process() {}

    @Override
    public void postProcess() {
        super.postProcess();
    }
}
