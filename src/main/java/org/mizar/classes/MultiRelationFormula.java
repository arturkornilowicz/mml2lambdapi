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

public class MultiRelationFormula extends Formula {

    private Formula formula;
    private List<RightSideOfRelationFormula> rightSideOfRelationFormulas  = new LinkedList<>();

    public MultiRelationFormula(Element element) {
        super(element);
        formula = Formula.buildFormula(element.elements().get(0));
        for (Element element1: element.elements(ESXElementName.RIGHTSIDEOF_RELATION_FORMULA)) {
            rightSideOfRelationFormulas.add(new RightSideOfRelationFormula(element1));
        }
    }

    @Override
    public void preProcess() {
        super.preProcess();
    }

    @Override
    public void process() {
        formula.run();
        for (RightSideOfRelationFormula rightSideOfRelationFormula: rightSideOfRelationFormulas) {
            rightSideOfRelationFormula.run();
        }
    }

    @Override
    public void postProcess() {
        super.postProcess();
    }

    @Override
    public Representation lpRepr() {
        List<String > formulas = new ArrayList<>();
        formulas.add(formula.lpRepr().repr);
        for (RightSideOfRelationFormula rightSideOfRelationFormula: getRightSideOfRelationFormulas()) {
            formulas.add(rightSideOfRelationFormula.lpRepr().toString());
        }
        return new Representation(LambdaPi.longBinaryConnective(Keyword.AND,formulas));
    }
}
