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
    private TypeSpecification typeSpecification;

    private Type expansionOfExpandableMode;

    public Definition(Element element) {
        super(element);
        redefine = new Redefine(element.element(ESXElementName.REDEFINE));
        pattern = Pattern.buildPattern(element.elements().get(1));

        if (element.getName().equals(ESXElementName.MODE_DEFINITION)) {
            if (element.element(ESXElementName.STANDARD_MODE) != null) {
                if (element.element(ESXElementName.STANDARD_MODE).element(ESXElementName.TYPE_SPECIFICATION) != null) {
                    typeSpecification = new TypeSpecification(element.element(ESXElementName.STANDARD_MODE).element(ESXElementName.TYPE_SPECIFICATION));
                }
                if (element.element(ESXElementName.STANDARD_MODE).element(ESXElementName.DEFINIENS) != null) {
                    definiens = Definiens.buildDefiniens(element.element(ESXElementName.STANDARD_MODE).element(ESXElementName.DEFINIENS));
                }
            } else {
                expansionOfExpandableMode = Type.buildType(element.element(ESXElementName.EXPANDABLE_MODE).elements().get(0));
            }
        } else {
            if (element.element(ESXElementName.TYPE_SPECIFICATION) != null) {
                typeSpecification = new TypeSpecification(element.element(ESXElementName.TYPE_SPECIFICATION));
            }
            if (element.element(ESXElementName.DEFINIENS) != null) {
                definiens = Definiens.buildDefiniens(element.element(ESXElementName.DEFINIENS));
            }
        }
    }

    // TODO make use of it
    public static Definition buildTDefinition(Element element) {
        switch (element.getName()) {
            case ESXElementName.PREDICATE_DEFINITION:
                return new PredicateDefinition(element);
            case ESXElementName.FUNCTOR_DEFINITION://_DEFINITION:
                return new FunctorDefinition(element);
            case ESXElementName.ATTRIBUTE_DEFINITION:
                return new AttributeDefinition(element);
//            case ESXElementName.STRUCT_TYPE:
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
        if (this.getElement().getName().equals(ESXElementName.MODE_DEFINITION)) {
            _Statics.inModeDefinition = true;
        }
        LambdaPi.addComment(isRedefinition() ? "Redefinition" : "Definition");
    }

    @Override
    public void process() {
        redefine.run();
        pattern.run();
        if (typeSpecification != null) {
            typeSpecification.run();
        }
        if (definiens != null) {
            definiens.run();
            _Statics.currentDefinitionWithIT = getDefiniens().getElement().attributeValue(ESXAttributeName.SHAPE).equals("Formula-Expression");
        }
    }

    @Override
    public void postProcess() {

        addDefiniendum();

        if (!expandableMode()) {
            addDefiniens();
        } else {
            String string = "\n" + Keyword.SYMBOL + " ";
            string += _Statics.currentDefinitionSymbol + Keyword.INTRODEF;
            if (_Statics.currentDefinitionWithIT) {
                string += Keyword.INTRODEF;
            }
            string += " ";
            string += _Statics.currentPattern.patternLoci(true);
            string += LambdaPi.addIS();
            string += Keyword.LAMBDA + " " + LambdaPi.argU(LambdaPi.patternVariable) + ", ";
            Term subject = _Statics.patternVariableTerm;
            string += LambdaPi.allLociWithTypesAndFormula(expansionOfExpandableMode.lpRepr(subject).repr);
            string += Keyword.SEMICOLON;
            LambdaPi.addTextLn(string);
        }

        if (getTypeSpecification() != null) {
            addTypeSpecification();
        }

        if (this.getElement().getName().equals(ESXElementName.MODE_DEFINITION)) {
            _Statics.inModeDefinition = false;
        }
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

    private void addTypeSpecification() {
        LambdaPi.addComment("Type Specification");
        Term subject = LambdaPi.createSimpleTerm(_Statics.currentPattern.patternUsage() + LambdaPi.patternVariable);
        String formula = LambdaPi.allLociWithTypesAndFormula(typeSpecification.getType().lpRepr(subject).repr);
        formula = LambdaPi.univQuantifier(LambdaPi.patternVariable,LambdaPi.OBJECT_TYPE + " " + LambdaPi.patternVariable,formula);
        LambdaPi.addStatementWithProof(LambdaPi.typeSpecificationId(),_Statics.currentPattern.patternLoci(true),formula);
    }

    protected boolean expandableMode() {
        return expansionOfExpandableMode != null;
    }

    protected boolean isRedefinition() {
        return redefine.getElement().attributeValue(ESXAttributeName.OCCURS).equals("true");
    }
}
