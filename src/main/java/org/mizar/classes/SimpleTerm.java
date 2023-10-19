package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import static org.mizar.lambdapi.LambdaPi.*;
import org.mizar.lambdapi.Representation;

@Setter
@Getter
@ToString

public class SimpleTerm extends Term {

    public SimpleTerm(Element element) {
        super(element);
    }

    @Override
    public void preProcess() {
        super.preProcess();
    }

    @Override
    public void process() {}

    @Override
    public void postProcess() {
        super.postProcess();
    }

    public Representation lpRepr() {
        return new Representation(spelling(this));
    }
}
