package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.application.MML2LambdaPiApplication;
import org.mizar.lambdapi.LambdaPi;
import org.mizar.lambdapi.Representation;

@Setter
@Getter
@ToString

public class Scheme extends XMLElement {

    public Scheme(Element element) {
        super(element);
    }

    @Override
    public void preProcess() { super.preProcess(); }

    @Override
    public void process() {}

    @Override
    public void postProcess() {
        super.postProcess();
    }

    @Override
    public Representation lpRepr() {
        return new Representation(MML2LambdaPiApplication.fileName.toUpperCase() + "_"+ LambdaPi.schemeNumber);
//        return new Representation({LambdaPi.spelling(this) + "_" + MML2LambdaPiApplication.fileName.toUpperCase() + "_"+ LambdaPi.schemeNumber);
    }
}
