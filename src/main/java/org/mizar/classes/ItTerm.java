package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.Keyword;
import org.mizar.lambdapi.LambdaPi;
import org.mizar.lambdapi.Representation;

@Setter
@Getter
@ToString

public class ItTerm extends Term {

    public ItTerm(Element element) {
        super(element);
    }

    @Override
    public void preProcess() { super.preProcess(); }

    @Override
    public void process() { }

    @Override
    public void postProcess() {
        super.postProcess();
    }

    @Override
    public Representation lpRepr() {
        String result = "";
        result += Keyword.LB  + _Statics.currentDefinitionSymbol + " " + _Statics.currentPattern.patternLoci(false);
        result += _Statics.inModeDefinition ? "IT" : "";
        result += Keyword.RB;
        return new Representation(result);
    }
}
