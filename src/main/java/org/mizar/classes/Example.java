package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class Example extends ExemplificationKind {

    private Variable variable;
    private Term term;

    public Example(Element element) {
        super(element);
        variable = new Variable(element.element(ESXElementName.VARIABLE));
        term = Term.buildTerm(element.elements().get(1));
    }

    @Override
    public void preProcess() {
        super.preProcess();
    }

    @Override
    public void process() {
        variable.run();
        term.run();
    }

    @Override
    public void postProcess() {
        super.postProcess();
    }
}
