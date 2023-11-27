package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.Keyword;
import org.mizar.lambdapi.LambdaPi;
import org.mizar.lambdapi.Representation;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class SimpleEquationalDefiniens extends Definiens {

    private Label label;
    private Term term;

    public SimpleEquationalDefiniens(Element element) {
        super(element);
        label = new Label(element.element(ESXElementName.LABEL));
        term = Term.buildTerm(element.elements().get(1));
    }

    @Override
    public void preProcess() { super.preProcess(); }

    @Override
    public void process() {
        label.run();
        term.run();
    }

    @Override
    public void postProcess() {
        super.postProcess();
    }

    @Override
    protected String definiensRepr() {
        return term.lpRepr().repr;
    }
}
