package org.mizar.classes;

import java.util.*;
import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.Keyword;
import org.mizar.lambdapi.Representation;
import org.mizar.misc.Errors;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class Variables extends XMLElement {

    private List<Variable> variables = new LinkedList<>();

    public Variables(Element element) {
        super(element);
        for (Element element1: element.elements(ESXElementName.VARIABLE)) {
            variables.add(new Variable(element1));
        }
    }

    @Override
    public void preProcess() {
        super.preProcess();
    }

    @Override
    public void process() {
        for (Variable variable: variables) {
            variable.run();
        }
    }

    @Override
    public void postProcess() {
        super.postProcess();
    }

    @Override
    public Representation lpRepr() {
        String string = "";
        if (!getElement().getParent().getParent().getParent().getName().equalsIgnoreCase(ESXElementName.UNIVERSAL_QUANTIFIER_FORMULA)
                && !getElement().getParent().getParent().getParent().getName().equalsIgnoreCase(ESXElementName.EXISTENTIAL_QUANTIFIER_FORMULA)
        ) {
            Errors.logException(new RuntimeException("Wrong element in " + this.getClass().getName()),"");
            throw new RuntimeException("Wrong element in " + this.getClass().getName());
        }
        String quantifier = getElement().getParent().getParent().getParent().getName().equals(ESXElementName.UNIVERSAL_QUANTIFIER_FORMULA) ? Keyword.AQUANTIFIER : Keyword.EQUANTIFIER;
        for (Variable variable: variables) {
            string += quantifier + " " + variable.lpRepr().repr + ", ";
        }
        return new Representation(string);
    }
}
