package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.application.MML2LambdaPiApplication;
import org.mizar.lambdapi.LambdaPi;
import org.mizar.patterns.AllPatterns;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class FunctorDefinition extends Definition {

    public FunctorDefinition(Element element) { super(element); }

    @Override
    public void preProcess() {
        super.preProcess();
        LambdaPi.addComment("Functor");
    }

    @Override
    public void process() { super.process(); }

    @Override
    public void postProcess() {
        _Statics.computedPatternRepresentation = null;

        if (getDefiniens() != null) {
            if (_Statics.currentDefinitionWithIT) {
                addDefiniendum();
            }
        } else {
            int superfluous = 0;
            if (getPattern().getElement().attributeValue(ESXAttributeName.SUPERFLUOUS) != null) {
                superfluous = Integer.parseInt(getPattern().getElement().attributeValue(ESXAttributeName.SUPERFLUOUS));
            }
            //TODO be carefull with superfluous
            superfluous = Integer.parseInt(getPattern().getElement().attributeValue(ESXAttributeName.ARITY)) - MML2LambdaPiApplication.allPatterns.arityOrigPattern(getPattern(),true);
            LambdaPi.addTextLn(LambdaPi.symbolWithRedefinition(getPattern(), superfluous));
        }
        addDefiniens();
        if (getTypeSpecification() != null) {
            LambdaPi.addComment("Type Specification");
            addTypeSpecification();
        }
//        super.postProcess();
    }

    private void addTypeSpecification() {
        String name = "TS_" + LambdaPi.normalizeMMLId(getElement().getParent().attributeValue(ESXAttributeName.POSITION));
        String resultType = getTypeSpecification().lpRepr().repr;
        LambdaPi.addStatementWithProof(name,"",getPattern().patternToUniversalFormula(resultType));
    }
}
