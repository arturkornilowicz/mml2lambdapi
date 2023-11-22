package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.xml_names.*;

import java.util.ArrayList;
import java.util.List;

@Setter
@Getter
@ToString

public class InfixFunctorPattern extends FunctorPattern {

    private Loci leftLoci;
    private Loci rightLoci;

    public InfixFunctorPattern(Element element) {
        super(element);
        leftLoci = new Loci(element.elements(ESXElementName.LOCI).get(0));
        rightLoci = new Loci(element.elements(ESXElementName.LOCI).get(1));
    }

    @Override
    public void preProcess() {
        super.preProcess();
    }

    @Override
    public void process() {
        leftLoci.run();
        rightLoci.run();
        super.process();
    }

    @Override
    public void postProcess() {
        super.postProcess();
    }

    @Override
    public List<String> allArgs() {
        List<String> result = new ArrayList<>();
        result.addAll(leftLoci.allLoci());
        result.addAll(rightLoci.allLoci());
        return result;
    }
}
