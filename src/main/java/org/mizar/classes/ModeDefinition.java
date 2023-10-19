package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.Keyword;
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
    }

    @Override
    public void process() {
        getRedefine().run();
        getPattern().run();
        modePatternKind.run();
    }

    @Override
    public void postProcess() {
        super.postProcess();
    }
}
