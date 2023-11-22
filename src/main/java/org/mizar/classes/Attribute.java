package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.application.MML2LambdaPiApplication;
import org.mizar.lambdapi.*;
import org.mizar.xml_names.*;

import java.util.Map;

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
        try {
            String string = "" + Keyword.LB;
            boolean negated = getElement().attribute(ESXAttributeName.NONOCC) != null;
            int arity = arguments.getArguments().size();// + 1;
//            for (int a = 0; a < arity; a++) {
//                string += Keyword.LB;
//            }
            if (negated) {
                string += Keyword.NOT + " " + Keyword.LB + " ";
            }
            string += MML2LambdaPiApplication.translations.translation(getElement()).lpRepr() + " ";


            //TODO compute correct loci
            for (int i = 0; i < MML2LambdaPiApplication.allPatterns.arityOrigPattern(this) - arguments.getArguments().size() - 1; i++) {
                string += LambdaPi.DUMMY_ARG + " ";
            }

            for (Term term : arguments.getArguments()) {
                string += term.lpRepr() + " "; // + Keyword.RB;
            }
            string += subject.lpRepr().repr + " ";// + Keyword.RB;
            if (negated) {
                string += " " + Keyword.RB;
            }
            string += Keyword.RB;
            return new Representation(string);
        } catch (Exception exception) {
            LambdaPi.wrongRepresentation(getElement(),exception);
            exception.printStackTrace();
        }
        return null;
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

