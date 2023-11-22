package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.xml_names.*;

import java.util.List;

@Setter
@Getter
@ToString

public class ModePattern extends Pattern {

    private Loci loci;

    public ModePattern(Element element) {
        super(element);
        loci = new Loci(element.element(ESXElementName.LOCI));
    }

    @Override
    public void preProcess() {
        super.preProcess();
    }

    @Override
    public void process() {
        loci.run();
        super.process();
    }

    @Override
    public void postProcess() {
        super.postProcess();
    }

    @Override
    public List<String> allArgs() {
        return loci.allLoci();
    }
}
