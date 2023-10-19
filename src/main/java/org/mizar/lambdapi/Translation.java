package org.mizar.lambdapi;

import lombok.*;
import org.dom4j.*;
import org.mizar.xml_names.*;

@AllArgsConstructor
@Getter
@Setter
@ToString

public class Translation {

    private Element element;

    public String lpReprSymbol() {
        return element.attributeValue("result");
    }

    public Representation lpRepr() {
        return new Representation(element.attributeValue("result") + "_" + getElement().attributeValue(ESXAttributeName.ABSOLUTEPATTERNMMLID).replace(":","_"));
    }
}
