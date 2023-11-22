package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.application.MML2LambdaPiApplication;
import org.mizar.lambdapi.*;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class FormulaWithArguments extends Formula {

    private Arguments arguments;

    public FormulaWithArguments(Element element) {
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
        return new Representation(LambdaPi.argumentedExpression(this));
    }
}
