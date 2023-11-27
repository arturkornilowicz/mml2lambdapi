package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class ExistentialAssumption extends Item {

    private QualifiedSegments qualifiedSegments;
    private Conditions conditions;

    public ExistentialAssumption(Element element) {
        super(element);
        qualifiedSegments = new QualifiedSegments(element.element(ESXElementName.QUALIFIED_SEGMENTS));
        conditions = new Conditions(element.element(ESXElementName.CONDITIONS));
    }

    @Override
    public void preProcess() {
        super.preProcess();
        if (isExportable()) {
            Element exformula = DocumentHelper.createElement(ESXElementName.EXISTENTIAL_QUANTIFIER_FORMULA);
            Element vars = DocumentHelper.createElement(ESXElementName.VARIABLE_SEGMENTS);
            Element scope = DocumentHelper.createElement(ESXElementName.SCOPE);
            exformula.add(vars);
            for (QualifiedSegment qualifiedSegment: qualifiedSegments.getQualifiedSegments()) {
                vars.add(qualifiedSegment.getElement().createCopy());
            }
            exformula.add(scope);
            Element conj, elem;
            if (conditions.getPropositions().size() == 1) {
                scope.add(conditions.getPropositions().get(0).getFormula().getElement().createCopy());
            } else {
                elem = (conditions.getPropositions().get(0).getFormula().getElement().createCopy());
                for (int i = 1; i < conditions.getPropositions().size(); i++) {
                    conj = DocumentHelper.createElement(ESXElementName.CONJUNCTIVE_FORMULA);
                    conj.add(elem);
                    conj.add(conditions.getPropositions().get(i).getFormula().getElement().createCopy());
                    elem = conj;
                }
                scope.add(elem);
            }
            ExistentialQuantifierFormula formula = new ExistentialQuantifierFormula(exformula);
            formula.preProcess();
            _Statics.currentDefinitionItem.getPermissiveAssumptions().add(formula);
        }
    }

    @Override
    public void process() {
        qualifiedSegments.run();
        conditions.run();
    }

    @Override
    public void postProcess() {
        super.postProcess();
    }
}
