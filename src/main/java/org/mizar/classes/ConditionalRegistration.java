package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.Keyword;
import org.mizar.lambdapi.LambdaPi;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class ConditionalRegistration extends Cluster {

    private AdjectiveCluster pred;
    private AdjectiveCluster succ;
    private Type type;

    public ConditionalRegistration(Element element) {
        super(element);
        pred = new AdjectiveCluster(element.elements().get(0));
        succ = new AdjectiveCluster(element.elements().get(1));
        type = Type.buildType(element.elements().get(2));
    }

    @Override
    public void preProcess() {
        super.preProcess();
        LambdaPi.addComment("Conditional");
    }

    @Override
    public void process() {
        pred.run();
        succ.run();
        type.run();
    }

    @Override
    public void postProcess() {
        Element tempElement = DocumentHelper.createElement(ESXElementName.SIMPLE_TERM.toString().replace("-",""))
                .addAttribute(ESXAttributeName.SPELLING,LambdaPi.patternVariable);
        String scope = "";
        if (pred.getAttributes().size() > 0) {
            scope += Keyword.IMP + " ";
            scope += LambdaPi.termWithAdjectives(pred, new SimpleTerm(tempElement)) + " ";
        }
        scope += LambdaPi.termWithAdjectives(succ,new SimpleTerm(tempElement));
        String formula = LambdaPi.univQuantifier(LambdaPi.patternVariable,LambdaPi.OBJECT_TYPE,scope);
        String name = "Cl_" + LambdaPi.normalizeMMLId(getElement().attributeValue(ESXAttributeName.POSITION));
        String args = LambdaPi.argsElement();
        LambdaPi.addStatementWithProof(name,args,formula);
        super.postProcess();
    }
}
