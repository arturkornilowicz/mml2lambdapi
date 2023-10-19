package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.Keyword;
import org.mizar.lambdapi.LambdaPi;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class AttrAntonym extends Item {

    private AttributePattern attributePattern;
    private PatternShapedExpression patternShapedExpression;

    public AttrAntonym(Element element) {
        super(element);
        attributePattern = new AttributePattern(element.element(ESXElementName.ATTRIBUTE_PATTERN));
        patternShapedExpression = new PatternShapedExpression(element.element(ESXElementName.PATTERN_SHAPED_EXPRESSION));
    }

    @Override
    public void preProcess() {
        super.preProcess();
        LambdaPi.addComment("Attribute Antonym");
    }

    @Override
    public void process() {
        attributePattern.run();
        patternShapedExpression.run();
    }

    @Override
    public void postProcess() {
        _Statics.setCurrentPattern(attributePattern);
        attributePattern.addNotationPattern(getPatternShapedExpression().getPattern(),true);
        super.postProcess();
    }
}
