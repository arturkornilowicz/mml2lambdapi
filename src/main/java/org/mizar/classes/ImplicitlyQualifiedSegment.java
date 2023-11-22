package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.*;
import org.mizar.misc.Errors;
import org.mizar.xml_names.*;
import java.util.*;

@Setter
@Getter
@ToString

public class ImplicitlyQualifiedSegment extends QualifiedSegment {

    private Variable variable;
    private ReservedDscrType reservedDscrType;

    public ImplicitlyQualifiedSegment(Element element) {
        super(element);
        variable = new Variable(element.element(ESXElementName.VARIABLE));
        reservedDscrType = new ReservedDscrType(element.element(ESXElementName.RESERVEDDSCR_TYPE));
    }

    @Override
    public void preProcess() {
        super.preProcess();
    }

    @Override
    public void process() {
        variable.run();
        reservedDscrType.run();
    }

    @Override
    public void postProcess() {
        super.postProcess();
    }

    @Override
    public Representation lpRepr() {
        if (!getElement().getParent().getParent().getName().equalsIgnoreCase(ESXElementName.UNIVERSAL_QUANTIFIER_FORMULA)
                && !getElement().getParent().getParent().getName().equalsIgnoreCase(ESXElementName.EXISTENTIAL_QUANTIFIER_FORMULA)
        ) {
            Errors.logException(new RuntimeException("Wrong element in " + this.getClass().getName()),"");
            throw new RuntimeException("Wrong element in " + this.getClass().getName());
        }
        String quantifier = getElement().getParent().getParent().getName().equals(ESXElementName.UNIVERSAL_QUANTIFIER_FORMULA) ? Keyword.AQUANTIFIER : Keyword.EQUANTIFIER;

//        String result = LambdaPi.univQuantifier(variable.lpRepr().repr,reservedDscrType.getType().lpRepr().repr,"(");
//        return new Representation(result);

        return new Representation(quantifier + " " + variable.lpRepr().repr + ", ");
    }

    @Override
    protected void splitSegmentToVariables() {
        _Statics.currentDefinitionItem.getVariables().put(variable,reservedDscrType.getType());
    }

    @Override
    protected Type getDeclaredType() {
        return reservedDscrType.getType();
    }

    @Override
    protected Map<Variable, Type> getVariablesType() {
        Map<Variable,Type> result = new LinkedHashMap<>();
        result.put(variable,reservedDscrType.getType());
        return result;
    }
}
