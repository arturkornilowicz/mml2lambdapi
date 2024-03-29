package org.mizar.classes;

import org.mizar.application.MML2LambdaPiApplication;
import org.mizar.lambdapi.LambdaPi;

public class _Statics {

    public static DefinitionItem currentDefinitionItem;
    public static Definition currentDefinition;
    public static Pattern currentPattern;
    public static String currentDefinitionSymbol;
    public static String currentDefinitionLoci;
    public static boolean currentDefinitionWithIT;
    public static String computedPatternRepresentation;
    public static Term currentTerm;
    public static boolean inLociDeclaration;
    public static boolean inTypeSpecification;
    public static boolean inModeDefinition;
    public static boolean inExpandableType;

    public static void setCurrentDefinitionItem(DefinitionItem definitionItem) {
        _Statics.currentDefinitionItem = definitionItem;
    }

    public static void setCurrentDefinition(Definition definition) {
        _Statics.currentDefinition = definition;
        _Statics.setCurrentPattern(definition.getPattern());
        _Statics.currentDefinitionWithIT = false;
    }

    public static void setCurrentPattern(Pattern pattern) {
        _Statics.currentPattern = pattern;
        _Statics.currentDefinitionSymbol = MML2LambdaPiApplication.translations.translation(pattern.getElement()).lpRepr().repr;
    }

    public static boolean bracketed(Term term) {
        return !(term instanceof SimpleTerm || term instanceof NumeralTerm || term instanceof PlaceholderTerm);
    }

    public static final SimpleTerm patternVariableTerm = LambdaPi.createSimpleTerm(LambdaPi.patternVariable);
}
