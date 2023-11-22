package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.LambdaPi;

@Setter
@Getter
@ToString

public class ModeDefinition extends Definition {

    private ModePatternKind modePatternKind;

    public ModeDefinition(Element element) {
        super(element);
        modePatternKind = ModePatternKind.buildModePatternKind(element.elements().get(2));
    }

    @Override
    public void preProcess() {
        super.preProcess();
        LambdaPi.addComment("Mode");
        _Statics.currentTerm = null;
    }

    @Override
    public void process() { super.process(); }

    @Override
    public void postProcess() { super.postProcess(); }
}
