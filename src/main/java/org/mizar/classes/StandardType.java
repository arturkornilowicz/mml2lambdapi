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

public class StandardType extends Type {

    private Arguments arguments;

    public StandardType(Element element) {
        super(element);
        arguments = new Arguments(element.element(ESXElementName.ARGUMENTS));
    }

    @Override
    public void preProcess() {
        super.preProcess();
        setTypeSymbol(MML2LambdaPiApplication.translations.translation(getElement()).lpRepr().repr);
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
        int arity = arguments.getArguments().size() ;
//        for (int a = 0; a < arity; a++) {
//            string += "(";
//        }
        string += MML2LambdaPiApplication.translations.translation(getElement()).lpRepr() + " ";
        for (Term term: arguments.getArguments()) {
            string += term.lpRepr() + " "; //")"
        }
        if (_Statics.currentTerm != null) {
            string += _Statics.currentTerm.lpRepr().repr;
        }
        return new Representation(string);
    }

    @Override
    public Representation lpRepr(Term subject) {
        String string = "";
        int arity = arguments.getArguments().size() ;
//        for (int a = 0; a < arity; a++) {
//            string += "(";
//        }
        string += MML2LambdaPiApplication.translations.translation(getElement()).lpRepr() + " ";
        for (Term term: arguments.getArguments()) {
            string += term.lpRepr() + " ";
        }
        string += LambdaPi.bracketedNotion(subject.lpRepr().repr);
        return new Representation(string);
    }
}
