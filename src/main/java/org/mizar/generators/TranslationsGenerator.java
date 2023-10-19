package org.mizar.generators;

import org.dom4j.*;
import org.dom4j.io.*;

import org.mizar.misc.FileNames;
import org.mizar.patterns.Patterns;
import org.mizar.translations.*;
import java.io.*;
import java.util.*;

public class TranslationsGenerator {

    private Element createElement(Element element, String sort) {
        Element result = DocumentHelper.createElement(TranslationElements.Translation);
        result.addAttribute(TranslationAttributes.Sort, sort)
                .addAttribute(TranslationAttributes.AbsolutePatternMMLID, element.attributeValue(TranslationAttributes.AbsolutePatternMMLID))
                .addAttribute(TranslationAttributes.AbsoluteConstrMMLID,element.attributeValue(TranslationAttributes.AbsoluteConstrMMLID))
                .addAttribute(TranslationAttributes.Result,element.attributeValue("spelling"));
        return result;
    }

    private List<Element> processPattern(List<Node> nodes, String sort) {
        List<Element> result = new ArrayList<>();
        for (Node node: nodes) {
            result.add(createElement((Element) node,sort));
        }
        return result;
    }

    private List<Element> processArticle(String fileName) {
        List<Element> result = new ArrayList<>();
        Document document;
        List<Node> nodes;
        System.out.println("Processing " + fileName + " ...");
        try {
            document = new SAXReader().read(fileName);
            for (Patterns pattern: Patterns.values()) {
                nodes = document.getRootElement().selectNodes("//"+pattern.getRepr()+"/"+pattern.getESXname());
                result.addAll(processPattern(nodes, pattern.getSortCounter()));
            }
        } catch (DocumentException e) {
            e.printStackTrace();
        }
        return result;
    }

    private Document createDocument() {
        Document document = DocumentHelper.createDocument();
        Element root = document.addElement(TranslationElements.Translations);
        File directoryPath = new File(FileNames.ESX_ABSTR_DIR);
        FilenameFilter esxFilefilter = new FilenameFilter(){
            public boolean accept(File dir, String name) {
                String lowercaseName = name.toLowerCase();
                return lowercaseName.endsWith(".esx");
            }
        };
        String filesList[] = directoryPath.list(esxFilefilter);
        Arrays.sort(filesList);
        for (String fileName: filesList) {
            for (Element element : processArticle(FileNames.ESX_ABSTR_DIR + fileName)) {
                root.add(element);
            }
        }
        System.out.println(document.getRootElement().elements().size() + " translations created.");
        return document;
    }


    public void write(Document document) {
        FileWriter fileWriter;
        XMLWriter writer;
        try  {
            fileWriter = new FileWriter("outputs/output.xml");
            OutputFormat format = OutputFormat.createPrettyPrint();

            writer = new XMLWriter(fileWriter, format);
            writer.write(document);
            writer.close();

            writer = new XMLWriter(System.out, format);
            writer.write(document);
            writer.close();
        } catch (Exception exception) {
            exception.printStackTrace();
        }
    }

    public static void main(String[] args) {
        TranslationsGenerator app = new TranslationsGenerator();
        Document document = app.createDocument();
        app.write(document);
    }
}
