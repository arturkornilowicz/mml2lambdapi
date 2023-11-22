package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.*;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class Variable extends XMLElement {

    public Variable(Element element) {
        super(element);
    }

    @Override
    public void preProcess() { super.preProcess(); }

    @Override
    public void process() { }

    @Override
    public void postProcess() {
        super.postProcess();
    }

    @Override
    public Representation lpRepr() {
        return new Representation(LambdaPi.spelling(this));
    }
}