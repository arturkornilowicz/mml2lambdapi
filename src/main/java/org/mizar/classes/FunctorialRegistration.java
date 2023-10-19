package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.LambdaPi;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class FunctorialRegistration extends Cluster {

    private Term term;
    private AdjectiveCluster adjectiveCluster;
    private Type type;

    public FunctorialRegistration(Element element) {
        super(element);
        term = Term.buildTerm(element.elements().get(0));
        adjectiveCluster = new AdjectiveCluster(element.element(ESXElementName.ADJECTIVE_CLUSTER));
        if (element.elements().size() > 2) {
            type = Type.buildType(element.elements().get(2));
        }
    }

    @Override
    public void preProcess() {
        super.preProcess();
        LambdaPi.addComment("Functorial");
    }

    @Override
    public void process() {
        term.run();
        adjectiveCluster.run();
        if (type != null) {
            type.run();
        }
    }

    @Override
    public void postProcess() {
        String formula = "";
        if (type != null) {
            // TODO add type processing
            LambdaPi.addText(type.lpRepr().toString());
        }
        formula += LambdaPi.termWithAdjectives(adjectiveCluster,term);
        String name = "Cl_" + LambdaPi.normalizeMMLId(getElement().attributeValue(ESXAttributeName.POSITION));
        String args = LambdaPi.argsElement();
        LambdaPi.addStatementWithProof(name,args,formula);
        super.postProcess();
    }
}
