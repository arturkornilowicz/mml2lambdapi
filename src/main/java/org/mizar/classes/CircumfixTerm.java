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

public class CircumfixTerm extends Term {

    private RightCircumflexSymbol rightCircumflexSymbol;
    private Arguments arguments;

    public CircumfixTerm(Element element) {
        super(element);
        rightCircumflexSymbol = new RightCircumflexSymbol(element.element(ESXElementName.RIGHT_CIRCUMFLEX_SYMBOL));
        arguments = new Arguments(element.element(ESXElementName.ARGUMENTS));
    }

    @Override
    public void preProcess() {
        super.preProcess();
    }

    @Override
    public void process() {
        rightCircumflexSymbol.run();
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
        for (Term term: arguments.getArguments()) {
            string += term.lpRepr() + " ";
        }
        string += Keyword.RB;
        return new Representation(string);
    }
}
