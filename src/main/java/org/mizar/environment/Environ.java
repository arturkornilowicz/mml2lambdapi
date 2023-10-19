package org.mizar.environment;

import org.dom4j.*;
import org.mizar.application.XMLApplication;

import java.util.*;
import lombok.*;

@Getter
public class Environ extends ArrayList<Directive> {

    private Document document;

    public Environ(String fileName) {
        loadEnvironment(fileName);
    }

    private void loadEnvironment(String fileName) {
        document = XMLApplication.readXMLFile(fileName);
        System.out.println("Loading environ " + fileName + " ...");
        for (Element element: document.getRootElement().elements()) {
            add(new Directive(element.getName(),element));
        }
    }

    @Override
    public String toString() {
        return super.toString();
    }

    public Directive getDirective(String name) {
        for (Directive directive: this) {
            if (directive.getElement().attribute(DirectiveAttributes.NAME).getValue().equals(name)) {
                return directive;
            }
        }
        return null;
    }
}
