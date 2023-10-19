package org.mizar.lambdapi;

import org.mizar.classes.*;
import org.mizar.misc.Errors;
import org.mizar.xml_names.*;

import java.sql.Struct;

public class LambdaPiGenerators {

    public static String generateFormula(Formula formula) {
        switch (formula.getElement().getName()) {
            case ESXElementName.RELATION_FORMULA:
                return generateRelationFormula(formula);
            default:
                Errors.error(formula.getElement(), "Unknown Formula in Generator");
                return null;
        }
    }

    private static String generateRelationFormula(Formula formula) {
        return null;
    }

    public static String generateAdjective(Attribute attribute) {
        return null;
    }

    public static String generateType(Type type) {
        switch (type.getElement().getName()) {
            case ESXElementName.CLUSTERED_TYPE:
                return generateClusteredType((StructType) type);
            case ESXElementName.STANDARD_TYPE:
                return generateStandardType((StandardType) type);
            case ESXElementName.STRUCT_TYPE:
                return generateStructType((StructType) type);
            default:
                Errors.error(type.getElement(), "Unknown Type in Generator");
                return null;
        }
    }

    private static String generateClusteredType(StructType type) {
        return null;
    }

    private static String generateStandardType(StandardType type) {
        return null;
    }

    private static String generateStructType(StructType type) {
        return null;
    }

    public static String generateTerm(Term term) {
        switch (term.getElement().getName()) {
            case ESXElementName.NUMERAL_TERM:
                return generateNumeralTerm((NumeralTerm) term);
            case ESXElementName.SIMPLE_TERM:
                return generateSimpleTerm((SimpleTerm) term);
            default:
                Errors.error(term.getElement(), "Unknown Term in Generator");
                return null;
        }
    }

    private static String generateNumeralTerm(NumeralTerm term) {
        return term.lpRepr().repr;
    }

    private static String generateSimpleTerm(SimpleTerm term) {
        return null;
    }
}

