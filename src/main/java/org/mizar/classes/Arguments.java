package org.mizar.classes;

import java.util.*;
import lombok.*;
import org.dom4j.*;
import org.mizar.application.MML2LambdaPiApplication;
import org.mizar.lambdapi.Representation;

@Setter
@Getter
@ToString

public class Arguments extends XMLElement {

    private List<Term> arguments = new LinkedList<>();

    public Arguments(Element element) {
        super(element);
        for (Element element1: element.elements()) {
            arguments.add(Term.buildTerm(element1));
        }
    }

    @Override
    public void preProcess() {
        super.preProcess();
    }

    @Override
    public void process() {
        for (Term term: arguments) {
            term.run();
        }
    }

    @Override
    public void postProcess() {
        super.postProcess();
    }


    @Override
    public Representation lpRepr() {
        String string = "";
        for (Term term: arguments) {
            string += term.lpRepr() + " ";
        }
        return new Representation(string);
    }
}
