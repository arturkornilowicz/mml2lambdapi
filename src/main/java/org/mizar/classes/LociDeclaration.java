package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.Keyword;
import org.mizar.lambdapi.LambdaPi;
import org.mizar.xml_names.*;

import java.util.ArrayList;
import java.util.List;

@Setter
@Getter
@ToString

public class LociDeclaration extends Item {

    private QualifiedSegments qualifiedSegments;
    private Conditions conditions;

    public LociDeclaration(Element element) {
        super(element);
        qualifiedSegments = new QualifiedSegments(element.element(ESXElementName.QUALIFIED_SEGMENTS));
        if (element.element(ESXElementName.CONDITIONS) != null) {
            conditions = new Conditions(element.element(ESXElementName.CONDITIONS));
        }
    }

    @Override
    public void preProcess() {
        super.preProcess();
        _Statics.inLociDeclaration = true;
    }

    @Override
    public void process() {
        qualifiedSegments.run();
        if (conditions != null) {
            conditions.run();
        }
    }

    @Override
    public void postProcess() {
        _Statics.inLociDeclaration = false;
        super.postProcess();
    }
}
