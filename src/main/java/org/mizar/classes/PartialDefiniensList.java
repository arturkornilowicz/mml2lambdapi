package org.mizar.classes;

import java.util.*;
import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.Keyword;
import org.mizar.lambdapi.LambdaPi;
import org.mizar.lambdapi.Representation;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class PartialDefiniensList extends XMLElement {

    private List<PartialDefiniens> partialDefiniensList = new LinkedList<>();

    public PartialDefiniensList(Element element) {
        super(element);
        for (Element element1: element.elements(ESXElementName.PARTIAL_DEFINIENS)) {
            partialDefiniensList.add(PartialDefiniens.buildPartialDefiniens(element1));
        }
    }

    @Override
    public void preProcess() {
        super.preProcess();
    }

    @Override
    public void process() {
        for (PartialDefiniens partialDefiniens: partialDefiniensList) {
            partialDefiniens.run();
        }
    }

    @Override
    public void postProcess() {
        super.postProcess();
    }

    @Override
    public Representation lpRepr() {
        List<String> list = new LinkedList<>();
        for (PartialDefiniens partialDefiniens: partialDefiniensList) {
            list.add(partialDefiniens.lpRepr().repr);
        }
        return new Representation(LambdaPi.longBinaryConnective(Keyword.AND,list));
    }

    public String guards() {
        List<String> list = new LinkedList<>();
        for (PartialDefiniens partialDefiniens: partialDefiniensList) {
            list.add(partialDefiniens.getGuard().lpRepr().repr);
        }
        return LambdaPi.longBinaryConnective(Keyword.OR,list);
    }
}
