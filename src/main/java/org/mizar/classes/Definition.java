package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.*;
import org.mizar.misc.Errors;
import org.mizar.xml_names.*;

@Setter
@Getter
@ToString

public class Definition extends Item {

    private Redefine redefine;
    private Pattern pattern;
    private Definiens definiens;

    private String computedPatternRepresentation;

    public Definition(Element element) {
        super(element);
        redefine = new Redefine(element.element(ESXElementName.REDEFINE));
        pattern = Pattern.buildPattern(element.elements().get(1));
        if (element.element(ESXElementName.DEFINIENS) != null) {
            definiens = Definiens.buildDefiniens(element.element(ESXElementName.DEFINIENS));
        }
    }

    // TODO make use of it
    public static Definition buildTDefinition(Element element) {
        switch (element.getName()) {
            case ESXElementName.PREDICATE_DEFINITION:
                return new PredicateDefinition(element);
            case ESXElementName.FUNCTOR_DEFINITION:_DEFINITION:
                return new FunctorDefinition(element);
            case ESXElementName.ATTRIBUTE_DEFINITION:
                return new AttributeDefinition(element);
//            case ElementNames.STRUCT_TYPE:
//                return new StructType(element);
            default:
                Errors.error(element, "Missing Element in buildDefinition [" + element.getName() + "]");
                return null;
        }
    }

    @Override
    public void preProcess() {
        super.preProcess();
        _Statics.setCurrentDefinition(this);
        LambdaPi.addComment(getRedefine().getElement().attributeValue(ESXAttributeName.OCCURS).equals("true") ? "Redefinition" : "Definition");
    }

    @Override
    public void process() {
        redefine.run();
        pattern.run();
        if (definiens != null) {
            definiens.run();
        }
    }

    @Override
    public void postProcess() {
        if (definiens == null) {
            addDefiniendum();
        }
        addDefiniens();
        super.postProcess();
    }

    protected void addDefiniendum() {
        LambdaPi.addTextSp(Keyword.SYMBOL);
        LambdaPi.addTextSp(_Statics.currentDefinitionSymbol);
        LambdaPi.addTextSp(Keyword.SCOPE);
        LambdaPi.addTextSp(LambdaPi.signature(pattern.getArity()));
        LambdaPi.addTextLn(Keyword.SEMICOLON);
    }

    protected void addDefiniens() {
        if (definiens != null) {
            LambdaPi.addTextLn(definiens.lpRepr().repr);
        }
    }
}
