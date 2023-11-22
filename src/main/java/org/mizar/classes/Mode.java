package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class Mode extends Type {

    private AdjectiveCluster adjectiveCluster;
    private Arguments arguments;

    public Mode(Element element) {
        super(element);
        adjectiveCluster = new AdjectiveCluster(element.element(ESXElementName.ADJECTIVE_CLUSTER));
        arguments = new Arguments(element.element(ESXElementName.ARGUMENTS));
    }

    @Override
    public void preProcess() {
        super.preProcess();
    }

    @Override
    public void process() {
        adjectiveCluster.run();
        arguments.run();
    }

    @Override
    public void postProcess() {
        super.postProcess();
    }
}
