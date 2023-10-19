package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.Keyword;
import org.mizar.lambdapi.LambdaPi;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class ExistentialRegistration extends Cluster {

    private AdjectiveCluster adjectiveCluster;
    private Type type;

    public ExistentialRegistration(Element element) {
        super(element);
        adjectiveCluster = new AdjectiveCluster(element.element(ESXElementName.ADJECTIVE_CLUSTER));
        type = Type.buildType(element.elements().get(1));
    }

    @Override
    public void preProcess() {
        super.preProcess();
        LambdaPi.addComment("Existential");
    }

    @Override
    public void process() {
        adjectiveCluster.run();
        type.run();
    }

    @Override
    public void postProcess() {
        Element tempElement = DocumentHelper.createElement(ESXElementName.SIMPLE_TERM.toString().replace("-",""))
                .addAttribute(ESXAttributeName.SPELLING,LambdaPi.patternVariable);
        String scope = LambdaPi.termWithAdjectives(adjectiveCluster,new SimpleTerm(tempElement));
        String formula = LambdaPi.exQuantifier(LambdaPi.patternVariable,LambdaPi.OBJECT_TYPE,scope);
        String name = "Cl_" + LambdaPi.normalizeMMLId(getElement().attributeValue(ESXAttributeName.POSITION));
        String args = LambdaPi.argsElement();
        LambdaPi.addStatementWithProof(name,args,formula);
        super.postProcess();
    }
}
