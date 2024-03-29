package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.misc.*;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class Conclusion extends Item {

    public Conclusion(Element element) {
        super(element);
    }

    public static Conclusion buildConclusion(Element element) {
        switch (element.elements().get(0).getName()) {
            case ESXElementName.DIFFUSE_STATEMENT:
                return new DiffuseConclusion(element);
            case ESXElementName.ITERATIVE_EQUALITY:
                return new IterativeConclusion(element);
            case ESXElementName.PROPOSITION:
                return new PropositionalConclusion(element);
            default:
                Errors.error(element, "Missing Element in buildConclusion [" + element.elements().get(0).getName() + "]");
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
