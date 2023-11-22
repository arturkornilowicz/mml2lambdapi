package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.application.MML2LambdaPiApplication;
import org.mizar.lambdapi.Keyword;
import org.mizar.lambdapi.LambdaPi;
import org.mizar.lambdapi.Representation;
import org.mizar.xml_names.ESXAttributeName;

@Setter
@Getter
@ToString

public class SchemePredicateFormula extends PredicateFormula {

    public SchemePredicateFormula(Element element) {
        super(element);
    }

    @Override
    public void preProcess() {
        super.preProcess();
    }

    @Override
    public void process() {
        super.process();
    }

    @Override
    public void postProcess() { super.postProcess(); }

    public String nameOper() {
        return getElement().attributeValue(ESXAttributeName.SPELLING);
    }

    @Override
    public Representation lpRepr() {
        String string = "";
        string += Keyword.LB;
        string += nameOper() + " ";
        //TODO IMPORTANT get correct number of arguments
        for (Term term: getArguments().getArguments()) {
            string += term.lpRepr() + " ";
        }
        string += Keyword.RB;
        return new Representation(string);
    }
}
