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
        Term subject = LambdaPi.createSimpleTerm(_Statics.currentPattern.patternUsage());
        return type.lpRepr(subject);
    }
}
