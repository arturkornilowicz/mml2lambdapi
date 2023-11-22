package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.LambdaPi;
import org.mizar.xml_names.*;
import java.util.*;

@Setter
@Getter
@ToString

public class QuantifierFormula extends Formula {

    private VariableSegments variableSegments;

    // Added for storing types of variables
    private Map<Variable,Type> allVariables = new LinkedHashMap<>();

    public QuantifierFormula(Element element) {
        super(element);
        variableSegments = new VariableSegments(element.element(ESXElementName.VARIABLE_SEGMENTS));
    }

    @Override
    public void preProcess() {
        super.preProcess();
        for (QualifiedSegment qualifiedSegment: variableSegments.getSegments()) {
            allVariables.putAll(qualifiedSegment.getVariablesType());
        }
    }

    @Override
    public void process() {
        variableSegments.run();
    }

    @Override
    public void postProcess() {
        super.postProcess();
    }

    protected String collectQuantifiers() {
        String result = "";
        for (QualifiedSegment qualifiedSegment: getVariableSegments().getSegments()) {
            result += qualifiedSegment.lpRepr().repr + " ";
        }
        return result;
    }

    protected List<String> collectVariables() {
        List<String> result = new ArrayList<>();
        SimpleTerm subject;
        for (Variable variable: getAllVariables().keySet()) {
            subject = LambdaPi.createSimpleTerm(variable.getElement().attributeValue(ESXAttributeName.SPELLING));
            result.add(getAllVariables().get(variable).lpRepr(subject).repr);
        }
        return result;
    }
}
