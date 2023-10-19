package org.mizar.application;

import java.io.*;
import org.dom4j.*;
import org.dom4j.io.*;
import org.mizar.classes.*;

public class XMLApplication {

    public Document document;
    public XMLElement xmlElement;

    public static Document readXMLFile(String fileName) {
        try {
            File inputFile = new File(fileName);
            SAXReader reader = new SAXReader();
            return reader.read(inputFile);
        } catch (DocumentException e) {
            e.printStackTrace();
        }
        return null;
    }

    public void init(String fileName) {
        document = readXMLFile(fileName);
    }

    public XMLElement buildTree() { return null; }

    public static Element getRequiredParent(Element element, String parentName) {
        Element result = element;
        while (!result.getName().equals(parentName)) {
            result = result.getParent();
        }
        return result;
    }
}
