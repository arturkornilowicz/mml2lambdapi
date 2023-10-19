package org.mizar.environment;

import lombok.*;
import org.dom4j.Element;

import java.util.ArrayList;

@Getter
public class Directive extends ArrayList<Element> {

    private String name;
    private Element element;

    public Directive(String name, Element element) {
        this.name = name;
        this.element = element;
        loadDirectives();
    }

    private void loadDirectives() {
        addAll(element.elements());
    }

}
