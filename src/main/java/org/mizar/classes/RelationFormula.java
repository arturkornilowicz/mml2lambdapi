package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.application.MML2LambdaPiApplication;
import org.mizar.lambdapi.LambdaPi;
import org.mizar.lambdapi.Representation;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class RelationFormula extends Formula {

    private Arguments arguments;

    public RelationFormula(Element element) {
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
    public void postProcess() { super.postProcess(); }

    @Deprecated
//    @Override
    public Representation lpReprDep() {
        String string = "";
        boolean bracketed = false;
        int arity = arguments.getArguments().size();
        for (int a = 0; a < arity; a++) {
            string += "(";
        }
        string += MML2LambdaPiApplication.translations.translation(getElement()).lpRepr() + " ";
        for (Term term: arguments.getArguments()) {
            bracketed = !term.getElement().getName().equals(ESXElementName.SIMPLE_TERM);
            if (bracketed) {
                string += "(";
            }
            string += term.lpRepr() + " ";
            if (bracketed) {
                string += ")";
            }
            string += ")";
        }
        return new Representation(string);
    }

    @Override
    public Representation lpRepr() {
        return new Representation(LambdaPi.argumentedExpression(this));
    }
}
