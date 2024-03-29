package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.misc.*;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class SchematicVariableSegment extends XMLElement {

    public SchematicVariableSegment(Element element) {
        super(element);
    }

    public static SchematicVariableSegment buildSchematicVariableSegment(Element element) {
        switch (element.getName()) {
            case ESXElementName.FUNCTOR_SEGMENT:
                return new FunctorSegment(element);
            case ESXElementName.PREDICATE_SEGMENT:
                return new PredicateSegment(element);
            default:
                Errors.error(element, "Missing Element in buildSchematicVariableSegment [" + element.getName() + "]");
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
