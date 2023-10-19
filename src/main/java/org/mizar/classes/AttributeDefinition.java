package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.Keyword;
import org.mizar.lambdapi.LambdaPi;

@Setter
@Getter
@ToString

public class AttributeDefinition extends Definition {

    public AttributeDefinition(Element element) {
        super(element);
    }

    @Override
    public void preProcess() { super.preProcess();
        LambdaPi.addComment("Attribute");
    }

    @Override
    public void process() { super.process(); }

    @Override
    public void postProcess() {
        super.postProcess();
    }
}
