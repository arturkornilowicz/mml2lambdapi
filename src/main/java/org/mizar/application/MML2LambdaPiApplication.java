package org.mizar.application;

import org.mizar.classes.*;
import org.mizar.environment.Environ;
import org.mizar.lambdapi.*;
import org.mizar.misc.*;
import org.mizar.translations.PatternDescriptions;

import java.util.List;

public class MML2LambdaPiApplication extends XMLApplication {

    public static String fileName;
    public static String outputDirName;
    public static String inputDirName;

    public static LambdaPi lambdaPi = new LambdaPi();
    public static Translations translations = new Translations(FileNames.TRANSLATIONS);
    public static PatternDescriptions patternDescriptions = new PatternDescriptions();
    public static Environ environ;

    @Override
    public XMLElement buildTree() {
        return new TextProper(document.getRootElement());
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
                app.init(app.inputDirName + "/" + app.fileName + ".esx");
                app.xmlElement = app.buildTree();
                app.lambdaPi.preambule();
//                app.lambdaPi.primitives();
                app.xmlElement.run();
                app.lambdaPi.endOfArticle();
            } catch (Exception exception) {
                Errors.logException(exception, app.fileName);
                exception.printStackTrace();
            } finally {
                errors.printErrors();
                errors.writeErrors();
                app.lambdaPi.printFile(app.outputDirName + "/" + app.fileName + ".lp");
            }
        } catch (ArrayIndexOutOfBoundsException exception) {
            System.out.println("Enter file name");
            exception.printStackTrace();
        }
    }
}
