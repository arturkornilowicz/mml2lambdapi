package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.Representation;

@Setter
@Getter
@ToString

public class OtherwiseEquational extends Otherwise {

    private Term term;

    public OtherwiseEquational(Element element) {
        super(element);
        if (element.elements().size() > 0) {
            term = Term.buildTerm(element.elements().get(0));
        }
    }

    @Override
    public void preProcess() {
        super.preProcess();
    }

    @Override
    public void process() {
        if (term != null) {
            term.run();
        }
    }

    @Override
    public void postProcess() {
        super.postProcess();
    }

    @Override
    public Representation lpRepr() {
        if (term != null) {
            return term.lpRepr();
        }
        return null;
    }
}
