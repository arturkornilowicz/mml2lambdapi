package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.*;
import org.mizar.xml_names.ESXAttributeName;

@Setter
@Getter
@ToString

public class QualifyingFormula extends Formula {

    private Term term;
    private Type type;

    public QualifyingFormula(Element element) {
        super(element);
        term = Term.buildTerm(element.elements().get(0));
        type = Type.buildType(element.elements().get(1));
    }

    @Override
    public void preProcess() {
        super.preProcess();
        _Statics.currentTerm = term;
    }

    @Override
    public void process() {
        term.run();
        type.run();
    }

    @Override
    public void postProcess() {
        super.postProcess();
    }

    @Deprecated
    //@Override
    public Representation lpReprDep() {
        String result = type.lpRepr().repr;
        if (_Statics.bracketed(term)) {
            result += Keyword.LB;
        }
        result += term.lpRepr().repr;
        if (_Statics.bracketed(term)) {
            result += Keyword.RB;
        }
        return new Representation(result);
    }

    @Override
    public Representation lpRepr() {
        _Statics.currentTerm = term;
        return new Representation(type.lpRepr().repr);
    }
}
