package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.xml_names.*;
import java.util.*;

@Setter
@Getter
@ToString

public class DefinitionItem extends Item {

    private Block block;

    // Added for computing loci
    private List<QualifiedSegment> segments = new LinkedList<>();
    private Map<Variable,Type> variables = new LinkedHashMap<>();

    private List<Formula> permissiveAssumptions = new LinkedList<>();

    public DefinitionItem(Element element) {
        super(element);
        block = Block.buildBlock(element.element(ESXElementName.BLOCK));
    }

    @Override
    public void preProcess() {
        super.preProcess();
        _Statics.setCurrentDefinitionItem(this);
    }

    @Override
    public void process() {
        block.run();
    }

    @Override
    public void postProcess() {
        _Statics.setCurrentDefinitionItem(null);
        super.postProcess();
    }
}
