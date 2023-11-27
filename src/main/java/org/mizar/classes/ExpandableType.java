package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.application.MML2LambdaPiApplication;
import org.mizar.lambdapi.*;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class ExpandableType extends Type {

    private Arguments arguments;
    private Type type;

    public ExpandableType(Element element) {
        super(element);
        arguments = new Arguments(element.element(ESXElementName.ARGUMENTS));
        type = Type.buildType(element.elements().get(1));
    }

    @Override
    public void preProcess() {
        super.preProcess();
        setTypeSymbol(MML2LambdaPiApplication.translations.translation(getElement()).lpRepr().repr);
        _Statics.inExpandableType = true;
    }

    @Override
    public void process() {
        arguments.run();
        type.run();
    }

    @Override
    public void postProcess() {
        _Statics.inExpandableType = false;
        super.postProcess();
    }

    @Deprecated
    //@Override
    public Representation lpReprDep() {
        String result = "";
        int arity = arguments.getArguments().size() ;
        for (int a = 0; a < arity; a++) {
            result += "(";
        }
        result += MML2LambdaPiApplication.translations.translation(getElement()).lpRepr() + " ";
        result += Keyword.LB;
        result += _Statics.currentTerm.lpRepr().repr;
        for (Term term: arguments.getArguments()) {
            result += term.lpRepr() + " )";
        }
        result += Keyword.RB;
        return new Representation(result);
    }

    @Override
    public Representation lpRepr() {
        String result = "";
        result += MML2LambdaPiApplication.translations.translation(getElement()).lpRepr() + " ";
        for (Term term: arguments.getArguments()) {
            result += term.lpRepr() + " ";
        }
        if (_Statics.currentTerm != null) {
            result += _Statics.currentTerm.lpRepr().repr;
        }
        return new Representation(result);
    }

    @Override
    public Representation lpRepr(Term subject) {
        String result = "";
        result += MML2LambdaPiApplication.translations.translation(getElement()).lpRepr() + " ";
        for (Term term: arguments.getArguments()) {
            result += term.lpRepr() + " ";
        }
        result += LambdaPi.bracketedNotion(subject.lpRepr().repr);
        return new Representation(result);
    }
}
