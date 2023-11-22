package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.misc.*;
import org.mizar.xml_names.*;
import java.util.*;

@Setter
@Getter
@ToString

abstract public class QualifiedSegment extends XMLElement {

    public QualifiedSegment(Element element) {
        super(element);
    }

    public static QualifiedSegment buildQualifiedSegment(Element element) {
        switch (element.getName()) {
            case ESXElementName.EXPLICITLY_QUALIFIED_SEGMENT:
                return new ExplicitlyQualifiedSegment(element);
            case ESXElementName.FREE_VARIABLE_SEGMENT:
                return new FreeVariableSegment(element);
            case ESXElementName.IMPLICITLY_QUALIFIED_SEGMENT:
                return new ImplicitlyQualifiedSegment(element);
            default:
                Errors.error(element, "Missing Element in buildQualifiedSegment [" + element.getName() + "]");
                return null;
        }
    }

    @Override
    public void preProcess() {
        super.preProcess();
        if (_Statics.inLociDeclaration) {
            _Statics.currentDefinitionItem.getSegments().add(this);
        }
    }

    @Override
    public void process() {}

    @Override
    public void postProcess() {
        if (_Statics.inLociDeclaration) {
            splitSegmentToVariables();
        }
        super.postProcess();
    }

    protected void splitSegmentToVariables() { }

    abstract protected Type getDeclaredType();
    abstract protected Map<Variable,Type> getVariablesType();
}
