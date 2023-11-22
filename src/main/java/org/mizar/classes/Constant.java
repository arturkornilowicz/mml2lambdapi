package org.mizar.classes;

import lombok.*;
import org.dom4j.*;

@Setter
@Getter
@ToString

public class Constant extends Term {

    public Constant(Element element) {
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
}
