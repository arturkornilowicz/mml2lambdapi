package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

// TODO Make synonyms and antonyms as subclasses
public class Notation extends Item {

    private Pattern pattern;
    private PatternShapedExpression patternShapedExpression;

    public Notation(Element element) {
        super(element);
        pattern = Pattern.buildPattern(element.elements().get(0));
        patternShapedExpression = new PatternShapedExpression(element.element(ESXElementName.PATTERN_SHAPED_EXPRESSION));
    }

    @Override
    public void preProcess() {
        super.preProcess();
    }

    @Override
    public void process() {
        pattern.run();
        patternShapedExpression.run();
    }

    @Override
    public void postProcess() {
        _Statics.setCurrentPattern(pattern);
        pattern.addNotationPattern(getPatternShapedExpression().getPattern(),false);
        super.postProcess();
    }
}
