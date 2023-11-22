package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.Keyword;
import org.mizar.lambdapi.LambdaPi;
import org.mizar.lambdapi.Representation;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class ComplexDefiniens extends Definiens {

    private Label label;
    private PartialDefiniensList partialDefiniensList;
    private Otherwise otherwise;

    public ComplexDefiniens(Element element) {
        super(element);
        label = new Label(element.element(ESXElementName.LABEL));
        partialDefiniensList = new PartialDefiniensList(element.element(ESXElementName.PARTIAL_DEFINIENS_LIST));
        otherwise = Otherwise.buildOtherwise(element.element(ESXElementName.OTHERWISE));
    }

    @Override
    public void preProcess() {
        super.preProcess();
        LambdaPi.addComment(getClass().getSimpleName());
    }

    @Override
    public void process() {
        label.run();
        partialDefiniensList.run();
        otherwise.run();
    }

    @Override
    public void postProcess() {
        super.postProcess();
    }

    @Override
    public Representation lpRepr() {
        String string = "";
        string += partialDefiniensList.lpRepr().repr;
//        LambdaPi.print(string);
        String guards = LambdaPi.negation(partialDefiniensList.guards());
        Representation other = otherwise.lpRepr();
        //TODO
        if (other != null)
        {
//            System.out.println(other);
            string = LambdaPi.conjunction(string, LambdaPi.conjunction(guards, other.repr));
        }

//        LambdaPi.addTextLn(Keyword.SYMBOL + " A " + Keyword.IS + " true;");
//        LambdaPi.addTextLn(Keyword.SYMBOL + " B " + Keyword.IS + " true;");
//        LambdaPi.addTextLn("type " +  string + ";");
        string = LambdaPi.symbolWithDefinition(string,true);
        return new Representation(string);
    }
}
