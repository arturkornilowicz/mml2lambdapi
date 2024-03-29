package org.mizar.classes;

import java.util.*;
import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.*;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class AdjectiveCluster extends XMLElement {

    private List<Attribute> attributes = new LinkedList<>();

    public AdjectiveCluster(Element element) {
        super(element);
        for (Element element1: element.elements(ESXElementName.ATTRIBUTE)) {
            attributes.add(new Attribute(element1));
        }
    }

    @Override
    public void preProcess() {
        super.preProcess();
    }

    @Override
    public void process() {
        for (Attribute attribute: attributes) {
            attribute.run();
        }
    }

    @Override
    public void postProcess() {
        super.postProcess();
    }

    @Override
    public Representation lpRepr() {
        //TODO make a conjunction
//        String result = "";
//        for (Attribute attribute: attributes) {
//            result += attribute.lpRepr() + " ";
//        }
//        return new Representation(result);
        return new Representation(LambdaPi.termWithAdjectives(this,_Statics.currentTerm));
    }

    public Representation lpRepr(Term subject) {
        //TODO make a conjunction
//        String result = "";
//        for (Attribute attribute: attributes) {
//            result += attribute.lpRepr() + " ";
//        }
//        return new Representation(result);
        return new Representation(LambdaPi.termWithAdjectives(this,subject));
    }
}
