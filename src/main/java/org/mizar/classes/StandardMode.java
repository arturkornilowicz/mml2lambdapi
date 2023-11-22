package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.Representation;

@Setter
@Getter
@ToString

public class StandardMode extends ModePatternKind {

    public StandardMode(Element element) {
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

    @Override
    public Representation lpRepr() {
        String string = "";
        return new Representation(string);
    }
}
