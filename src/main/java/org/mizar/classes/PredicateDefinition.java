package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.*;

@Setter
@Getter
@ToString

public class PredicateDefinition extends Definition {

    PredicateDefinition(Element element) {
        super(element);
    }

    @Override
    public void preProcess() {
        super.preProcess();
        LambdaPi.addComment("Predicate");
    }

    @Override
    public void process() { super.process(); }

    @Override
    public void postProcess() { super.postProcess(); }
}
