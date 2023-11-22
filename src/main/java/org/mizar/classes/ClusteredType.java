package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.*;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class ClusteredType extends Type {

    private AdjectiveCluster adjectiveCluster;
    private Type type;

    public ClusteredType(Element element) {
        super(element);
        adjectiveCluster = new AdjectiveCluster(element.element(ESXElementName.ADJECTIVE_CLUSTER));
        type = Type.buildType(element.elements().get(1));
    }

    @Override
    public void preProcess() {
        super.preProcess();
    }

    @Override
    public void process() {
        adjectiveCluster.run();
        type.run();
    }

    @Override
    public void postProcess() {
        super.postProcess();
    }

    @Override
    public Representation lpRepr() {
        String string = type.lpRepr().repr;
        //TODO commented
//        if (!_Statics.inExpandableType) {
//            _Statics.currentTerm = LambdaPi.createSimpleTerm(LambdaPi.patternVariable);
//            string += _Statics.currentTerm.lpRepr();
//        }
        return new Representation(LambdaPi.conjunction(string,adjectiveCluster.lpRepr().repr));
    }

    @Override
    public Representation lpRepr(Term subject) {
        String string = type.lpRepr(subject).repr;
        return new Representation(LambdaPi.conjunction(string,adjectiveCluster.lpRepr(subject).repr));
    }
}