package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.application.*;
import org.mizar.lambdapi.*;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class InfixTerm extends Term {

    private Arguments arguments;

    public InfixTerm(Element element) {
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
    @Override
    public Representation lpRepr() {
        String string = "";
        string += Keyword.LB;
        string += MML2LambdaPiApplication.translations.translation(getElement()).lpRepr() + " ";
        //TODO IMPORTANT get correct number of arguments
        for (Term term: arguments.getArguments()) {
            string += term.lpRepr() + " ";
        }
        string += Keyword.RB;
        return new Representation(string);
    }
}
