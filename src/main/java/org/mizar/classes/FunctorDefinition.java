package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.LambdaPi;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class FunctorDefinition extends Definition {

    private TypeSpecification typeSpecification;

    public FunctorDefinition(Element element) {
        super(element);
        if (element.element(ESXElementName.TYPE_SPECIFICATION) != null) {
            typeSpecification = new TypeSpecification(element.element(ESXElementName.TYPE_SPECIFICATION));
        }
    }

    @Override
    public void preProcess() {
        super.preProcess();
        LambdaPi.addComment("Functor");
    }

    @Override
    public void process() {
        getRedefine().run();
        getPattern().run();
        if (typeSpecification != null) {
            typeSpecification.run();
        }
        if (getDefiniens() != null) {
            getDefiniens().run();
            _Statics.currentDefinitionWithIT = getDefiniens().getElement().attributeValue(ESXAttributeName.SHAPE).equals("Formula-Expression");
        }
    }

    @Override
    public void postProcess() {
        if (getDefiniens() != null) {
            if (_Statics.currentDefinitionWithIT) {
                addDefiniendum();
            }
        } else {
            int superfluous = 0;
            if (getPattern().getElement().attributeValue(ESXAttributeName.SUPERFLUOUS) != null) {
                superfluous = Integer.parseInt(getPattern().getElement().attributeValue(ESXAttributeName.SUPERFLUOUS));
            }
            LambdaPi.addTextLn(LambdaPi.symbolWithRedefinition(getPattern(),superfluous));
        }
        addDefiniens();
        if (typeSpecification != null) {
            LambdaPi.addComment("Type Specification");
            addTypeSpecification();
        }
//        super.postProcess();
    }

    private void addTypeSpecification() {
        String name = "TS_" + LambdaPi.normalizeMMLId(getElement().getParent().attributeValue(ESXAttributeName.POSITION));
        String resultType = typeSpecification.lpRepr().repr;
        LambdaPi.addStatementWithProof(name,"",getPattern().patternToUniversalFormula(resultType));
    }
}
