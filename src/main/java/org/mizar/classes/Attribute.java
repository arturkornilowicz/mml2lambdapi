package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.application.MML2LambdaPiApplication;
import org.mizar.lambdapi.Keyword;
import org.mizar.lambdapi.Representation;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class Attribute extends XMLElement {

    private Arguments arguments;

    public Attribute(Element element) {
        super(element);
        arguments = new Arguments(element.element(ESXElementName.ARGUMENTS));
    }

    @Override
    public void preProcess() {
        super.preProcess();
    }

    @Override
    public void process() {
        arguments.run();
    }

    @Override
    public void postProcess() {
        super.postProcess();
    }

    public Representation lpRepr(Term subject) {
        String string = "";
        boolean negated = getElement().attribute(ESXAttributeName.NONOCC) != null;
        int arity = arguments.getArguments().size() + 1;
        for (int a = 0; a < arity; a++) {
            string += Keyword.LB;
        }
        if (negated) {
            string += Keyword.NOT + " " + Keyword.LB;
        }
        string += MML2LambdaPiApplication.translations.translation(getElement()).lpRepr() + " ";
        string += subject.lpRepr().repr + Keyword.RB;
        for (Term term : arguments.getArguments()) {
            string += term.lpRepr() + Keyword.RB;
        }
        if (negated) {
            string += Keyword.RB;
        }
        return new Representation(string);
    }

    @Override
    public Representation lpRepr() {
        String string = "";
        boolean negated = getElement().attribute(ESXAttributeName.NONOCC) != null;
        int arity = arguments.getArguments().size();
        for (int a = 0; a < arity; a++) {
            string += Keyword.LB;
        }
        if (negated) {
            string += Keyword.NOT + Keyword.LB;
        }
        string += MML2LambdaPiApplication.translations.translation(getElement()).lpRepr() + " ";
        for (Term term : arguments.getArguments()) {
            string += term.lpRepr() + Keyword.RB;
        }
        if (negated) {
            string += Keyword.RB;
        }
        return new Representation(string);
    }
}

