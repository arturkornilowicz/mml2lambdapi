package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.LambdaPi;
import org.mizar.lambdapi.Representation;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class PrivateFunctorTerm extends TermWithArguments {

    public PrivateFunctorTerm(Element element) {
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
    public void postProcess() {
        super.postProcess();
    }

    @Override
    public Representation lpRepr() {
        return new Representation(LambdaPi.privateDefinition(this,getArguments()));
    }
}
