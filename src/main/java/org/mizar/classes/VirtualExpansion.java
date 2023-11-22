package org.mizar.classes;

import lombok.*;
import org.dom4j.*;

@Setter
@Getter
@ToString

public class VirtualExpansion extends XMLElement {

    private Term term;

    public VirtualExpansion(Element element) {
        super(element);
        term = Term.buildTerm(element.elements().get(0));
    }

    @Override
    public void preProcess() {
        super.preProcess();
    }

    @Override
    public void process() {
        term.run();
    }

    @Override
    public void postProcess() {
        super.postProcess();
    }
}
