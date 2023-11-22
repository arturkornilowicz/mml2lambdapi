package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.application.MML2LambdaPiApplication;
import org.mizar.lambdapi.*;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class TermWithArguments extends Term {

    private Arguments arguments;

    public TermWithArguments(Element element) {
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

    public String nameOper() {
        if (MML2LambdaPiApplication.translations.translation(getElement()) != null) {
            return MML2LambdaPiApplication.translations.translation(getElement()).lpRepr().repr;
        } else {
            return "DUMMY_OPER";
        }
    }

    @Override
    public Representation lpRepr() {
        String string = "";
        boolean bracketed = arguments.getArguments().size() > 0;
        if (bracketed) {
            string += Keyword.LB;
        }
        String nameOper = nameOper();
        string += nameOper;
        if (nameOper.equals(LambdaPi.DUMMY_REPRESENTATION + "_" + LambdaPi.DUMMY_REPRESENTATION)) {
            string += "_" + arguments.getArguments().size();
        }
        string += " ";

        //TODO compute correct loci
        for (int i = 0; i < MML2LambdaPiApplication.allPatterns.arityOrigPattern(this) - arguments.getArguments().size(); i++) {
            string += LambdaPi.DUMMY_ARG + " ";
        }


        for (Term term : arguments.getArguments()) {
            string += term.lpRepr() + " ";
        }
        if (bracketed) {
            string += Keyword.RB;
        }
        return new Representation(string);
    }
}
