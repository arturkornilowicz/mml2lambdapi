package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.*;
import org.mizar.application.*;
import org.mizar.xml_names.*;

@AllArgsConstructor
@ToString
@Getter
@Setter

public class XMLElement {

    private Element element;
    private Representation representation;

    public XMLElement(Element element) {
        this(element,null);
    }

    public void preProcess() {}

    public void process() {}

    public void postProcess() {}

    public void run() {
        preProcess();
        process();
        postProcess();
    }

    public final Translation translation() {
        return MML2LambdaPiApplication.translations.translation(element);
    }

    public Representation lpRepr() {
        return new Representation(LambdaPi.unknown(getClass()));
    }

    public boolean isExportable() {
        if (_Statics.currentDefinitionItem == null) {
            return false;
        }
        Element temp = this.getElement();
        while (!temp.getName().equals(ESXElementName.TEXT_PROPER)) {
            if (temp.getName().equals(ESXElementName.BLOCK) && MML2LambdaPiApplication.blockNames.contains(temp.attributeValue(ESXAttributeName.KIND))) {
                return false;
            }
            temp = temp.getParent();
        }
        return true;
    }
}
