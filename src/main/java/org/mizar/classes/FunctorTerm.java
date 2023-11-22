package org.mizar.classes;

import lombok.*;
import org.dom4j.*;

@Setter
@Getter
@ToString

public class FunctorTerm extends TermWithArguments {

    public FunctorTerm(Element element) {
        super(element);
    }

    @Override
    public void preProcess() {
        super.preProcess();
    }

    @Override
    public void process() { super.process(); }

    @Override
    public void postProcess() {
        super.postProcess();
    }
}
