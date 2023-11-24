package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.*;

@Setter
@Getter
@ToString

public class TypeSpecification extends XMLElement {

    private Type type;

    public TypeSpecification(Element element) {
        super(element);
        type = Type.buildType(element.elements().get(0));
    }

    @Override
    public void preProcess() {
        super.preProcess();
        _Statics.inTypeSpecification = true;
//        _Statics.currentTerm = new SimpleTerm(DocumentHelper.createElement(ESXElementName.SIMPLE_TERM.toString().replace("-",""))
//                .addAttribute(ESXAttributeName.SPELLING, _Statics.currentDefinitionSymbol + " "));
//        _Statics.currentTerm = null;
    }

    @Override
    public void process() {
        type.run();
    }

    @Override
    public void postProcess() {
        super.postProcess();
        _Statics.inTypeSpecification = false;
    }

    @Override
    public Representation lpRepr() {
        _Statics.currentTerm = null;
//        _Statics.currentTerm = LambdaPi.createSimpleTerm(LambdaPi.patternVariable);
        Term subject = LambdaPi.createSimpleTerm(LambdaPi.patternVariable);
        subject = LambdaPi.createSimpleTerm(_Statics.currentPattern.patternUsage());
        return type.lpRepr(subject);

//        if (_Statics.computedPatternRepresentation == null) {
//            return type.lpRepr();
//        } else {
//            subject = LambdaPi.createSimpleTerm(_Statics.computedPatternRepresentation);
//            Representation representation = type.lpRepr(subject);
//            return representation;
//        }
    }
}
