package org.mizar.classes;

import java.util.*;
import lombok.*;
import org.dom4j.*;

@Setter
@Getter
@ToString

public class DefConstant extends Term {

    private VirtualExpansion virtualExpansion;

    public DefConstant(Element element) {
        super(element);
        //TODO
//        virtualExpansion = new VirtualExpansion(element.element(ElementNames.VIRTUAL_EXPANSION));
    }

    @Override
    public void preProcess() {
        super.preProcess();
    }

    @Override
    public void process() {
        //TODO
//        virtualExpansion.run();
    }

    @Override
    public void postProcess() {
        super.postProcess();
    }
}
