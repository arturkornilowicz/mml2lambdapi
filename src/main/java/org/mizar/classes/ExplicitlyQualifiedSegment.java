package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.Representation;
import org.mizar.xml_names.*;
import java.util.*;

@Setter
@Getter
@ToString

public class ExplicitlyQualifiedSegment extends QualifiedSegment {

    private Variables variables;
    private Type type;

    public ExplicitlyQualifiedSegment(Element element) {
        super(element);
        variables = new Variables(element.element(ESXElementName.VARIABLES));
        type = Type.buildType(element.elements().get(1));
    }

    @Override
    public void preProcess() { super.preProcess(); }

    @Override
    public void process() {
        variables.run();
        type.run();
    }

    @Override
    public void postProcess() {
        super.postProcess();
    }

    @Override
    public Representation lpRepr() {
        return variables.lpRepr();
    }

    @Override
    protected void splitSegmentToVariables() {
        for (Variable variable: variables.getVariables()) {
            _Statics.currentDefinitionItem.getVariables().put(variable,type);
        }
    }

    @Override
    protected Type getDeclaredType() {
        return this.getType();
    }

    @Override
    protected Map<Variable,Type> getVariablesType() {
        Map<Variable,Type> result = new LinkedHashMap<>();
        for (Variable variable: variables.getVariables()) {
            result.put(variable,type);
        }
        return result;
    }
}
