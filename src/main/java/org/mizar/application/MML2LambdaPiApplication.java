package org.mizar.application;

import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.Node;
import org.dom4j.io.SAXReader;
import org.mizar.classes.*;
import org.mizar.environment.Environ;
import org.mizar.lambdapi.*;
import org.mizar.misc.*;
import org.mizar.patterns.*;
import org.mizar.translations.*;
import org.mizar.xml_names.ESXAttributeName;

import java.util.List;

public class MML2LambdaPiApplication extends XMLApplication {

    public static String fileName;
    public static String outputDirName;
    public static String inputDirName;

    public static LambdaPi lambdaPi = new LambdaPi();
    public static Translations translations = new Translations(FileNames.TRANSLATIONS);
    public static PatternDescriptions patternDescriptions = new PatternDescriptions();
    public static Environ environ;
    public static AllPatterns allPatterns = new AllPatterns();

    @Override
    public XMLElement buildTree() {
        return new TextProper(document.getRootElement());
    }

    public void addPatterns() {
        List<Node> nodes;
        Element element;
        try {
            for (Patterns pattern: Patterns.values()) {
                nodes = document.getRootElement().selectNodes("//"+pattern.getRepr()+"/"+pattern.getESXname());
                for (Node node: nodes) {
                    element = (Element)node;
                    allPatterns.add(new PatternArity(pattern.getESXname(),
                            element.attributeValue(ESXAttributeName.ABSOLUTEPATTERNMMLID),
                            Integer.parseInt(element.attributeValue(ESXAttributeName.ARITY))));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        try {
            MML2LambdaPiApplication app = new MML2LambdaPiApplication();
            MML2LambdaPiApplication.inputDirName = args[0];
            MML2LambdaPiApplication.fileName = args[1];
            MML2LambdaPiApplication.outputDirName = args[2];
            System.out.println("Processing " + MML2LambdaPiApplication.inputDirName + "/" + MML2LambdaPiApplication.fileName + " ...");
            environ = new Environ(inputDirName + "/" + fileName + ".evl");
            Errors errors = new Errors(app.fileName);
            try {
                app.init(app.inputDirName + "/" + app.fileName + ".tix");
                app.xmlElement = app.buildTree();
                allPatterns.readPatterns();
                app.addPatterns();
                app.lambdaPi.preambule();
                app.lambdaPi.primitives();
                app.xmlElement.run();
                app.lambdaPi.endOfArticle();
            } catch (Exception exception) {
                Errors.logException(exception, app.fileName);
                exception.printStackTrace();
            } finally {
                errors.printErrors();
                errors.writeErrors();
                allPatterns.writePatterns();
                app.lambdaPi.printFile(app.outputDirName + "/" + app.fileName + ".lp");
                System.out.println("File " + app.outputDirName + "/" + app.fileName + ".lp" + " created");
            }
        } catch (ArrayIndexOutOfBoundsException exception) {
            System.out.println("Enter file name");
            exception.printStackTrace();
        }
    }
}
