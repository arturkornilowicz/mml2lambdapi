package org.mizar.lambdapi;

import java.io.*;
import java.util.*;
import org.dom4j.*;
import org.dom4j.io.*;
import org.mizar.misc.Errors;
import org.mizar.xml_names.*;

public class Translations extends LinkedList<Translation> {
    private String fileName;

    public Translations(String fileName) {
        this.fileName = fileName;
        loadTranslations();
    }

    private void loadTranslations(String fileName) {
        try {
            System.out.println("Loading translations from " + fileName);
            SAXReader saxBuilder = new SAXReader();
            Document document = saxBuilder.read(new File(fileName));
            for (Element element : document.getRootElement().elements("Translation")) {
                this.add(new Translation(element));
            }
        } catch (Exception exception) {
            exception.printStackTrace();
        }
    }

    private void loadTranslations() {
        try {
            loadTranslations(fileName);
            // Translations for test only
            loadTranslations(fileName + ".add");
        } catch (Exception exception) {
            exception.printStackTrace();
        }
    }

    private String sort(String name) {
        return switch (name) {
            case ESXElementName.ATTRIBUTE -> "Attribute";
            case ESXElementName.ATTRIBUTE_PATTERN -> "Attribute";
            case ESXElementName.PREDICATE_PATTERN -> "Predicate";
            case ESXElementName.RELATION_FORMULA -> "Predicate";
            case ESXElementName.RIGHTSIDEOF_RELATION_FORMULA -> "Predicate";
            case ESXElementName.CIRCUMFIX_TERM -> "Functor";
            case TIXElementName.FUNCTOR_TERM -> "Functor";
            case ESXElementName.INFIX_TERM -> "Functor";
            case ESXElementName.CIRCUMFIXFUNCTOR_PATTERN -> "Functor";
            case ESXElementName.INFIXFUNCTOR_PATTERN -> "Functor";
            case TIXElementName.SCHEME_FUNCTOR_TERM -> "Functor";
            case ESXElementName.MODE_PATTERN -> "Mode";
            case ESXElementName.STANDARD_TYPE -> "Mode";
            case TIXElementName.EXPANDABLE_TYPE -> "Mode";
            default -> "ERROR";
        };
    }

    public Translation translation(Element element) {
        String sort = sort(element.getName());
        for (Translation translation: this) {
                if (translation.getElement().attributeValue("sort").equals(sort)) {
//                if (element.attributeValue(ESXAttributeName.SORT).equals(translation.getElement().attributeValue(ESXAttributeName.SORT))) {
                if (element.attributeValue(ESXAttributeName.ABSOLUTEPATTERNMMLID).equals(translation.getElement().attributeValue(ESXAttributeName.ABSOLUTEPATTERNMMLID))
                &&
                        (
                                element.attribute(ESXAttributeName.ABSOLUTECONSTRMMLID) == null ||
                                element.attributeValue(ESXAttributeName.ABSOLUTECONSTRMMLID).equals(translation.getElement().attributeValue(ESXAttributeName.ABSOLUTECONSTRMMLID))
                        )
                )
                    return translation;
            }
        }

        //TODO commented
//        throw new RuntimeException("Translation not found for "
//                + element.getName() + " "
//                + element.attributeValue(ESXAttributeName.ABSOLUTEPATTERNMMLID) + " "
//                + element.attributeValue(ESXAttributeName.ABSOLUTECONSTRMMLID));


        Errors.logException(new RuntimeException("Translation not found for "
                + element.getName() + " "
                + element.attributeValue(ESXAttributeName.ABSOLUTEPATTERNMMLID) + " "
                + element.attributeValue(ESXAttributeName.ABSOLUTECONSTRMMLID)), element.attributeValue(ESXAttributeName.XMLID));
        Translation dummy = get(0);
        dummy.getElement().setAttributes(List.of(
                DocumentHelper.createAttribute(dummy.getElement(),"sort",""),
                DocumentHelper.createAttribute(dummy.getElement(),"absolutepatternMMLId",LambdaPi.DUMMY_REPRESENTATION),
                DocumentHelper.createAttribute(dummy.getElement(),"absoluteconstrMMLId",""),
                DocumentHelper.createAttribute(dummy.getElement(),"result",LambdaPi.DUMMY_REPRESENTATION)));
        return dummy;
    }

    public Translation translation(String sort, String absolutePatternMMLId, String absoluteConstrMMLId) {
        sort = sort(sort);
        for (Translation translation: this) {
            if (translation.getElement().attributeValue("sort").equals(sort)) {
                if (absolutePatternMMLId.equals(translation.getElement().attributeValue(ESXAttributeName.ABSOLUTEPATTERNMMLID))
                        &&
                        (
                                absoluteConstrMMLId == null ||
                                        absoluteConstrMMLId.equals(translation.getElement().attributeValue(ESXAttributeName.ABSOLUTECONSTRMMLID))
                        )
                )
                    return translation;
            }
        }

        //TODO commented
//        throw new RuntimeException("Translation not found for "
//                + sort + " "
//                + absolutePatternMMLId + " "
//                + absoluteConstrMMLId);

        Errors.logException(new RuntimeException("Translation not found for "
                + sort + " "
                + absolutePatternMMLId + " "
                + absoluteConstrMMLId)," ");
        Translation dummy = get(0);
        dummy.getElement().setAttributes(List.of(
                DocumentHelper.createAttribute(dummy.getElement(),"sort",""),
                DocumentHelper.createAttribute(dummy.getElement(),"absolutepatternMMLId",LambdaPi.DUMMY_REPRESENTATION),
                DocumentHelper.createAttribute(dummy.getElement(),"absoluteconstrMMLId",""),
                DocumentHelper.createAttribute(dummy.getElement(),"result",LambdaPi.DUMMY_REPRESENTATION)));
        return dummy;
    }
}
