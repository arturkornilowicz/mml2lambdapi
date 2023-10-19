package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.*;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class FuncSynonym extends Item {

    private FunctorPattern functorPattern;
    private PatternShapedExpression patternShapedExpression;

    public FuncSynonym(Element element) {
        super(element);
        functorPattern = FunctorPattern.buildFunctorPattern(element.elements().get(0));
        patternShapedExpression = new PatternShapedExpression(element.element(ESXElementName.PATTERN_SHAPED_EXPRESSION));
    }

    @Override
    public void preProcess() {
        super.preProcess();
        LambdaPi.addComment("Functor Synonym");
    }

    @Override
    public void process() {
        functorPattern.run();
        patternShapedExpression.run();
    }

    @Override
    public void postProcess() {
        _Statics.setCurrentPattern(functorPattern);
        functorPattern.addNotationPattern(getPatternShapedExpression().getPattern(),false);
        super.postProcess();
    }
}
