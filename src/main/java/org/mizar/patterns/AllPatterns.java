package org.mizar.patterns;

import org.mizar.application.MML2LambdaPiApplication;
import org.mizar.classes.Attribute;
import org.mizar.classes.Formula;
import org.mizar.classes.Pattern;
import org.mizar.classes.Term;
import org.mizar.xml_names.*;
import java.io.*;
import java.util.*;

public class AllPatterns extends LinkedList<PatternArity> {

    private String fileName = "outputs/patterns.txt";

    public void readPatterns() {
        System.out.println("Patterns arities loaded from " + fileName);
        try {
            Scanner scanner = new Scanner(new File(fileName));
            String line;
            String tab[];
            while (scanner.hasNextLine()) {
                line = scanner.nextLine();
                tab = line.split(" ");
                MML2LambdaPiApplication.allPatterns.add(new PatternArity(tab[0],tab[1],Integer.parseInt(tab[2])));
            }
            scanner.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void writePatterns() {
        try {
            FileWriter fw = new FileWriter(new File(fileName),false);
            for (PatternArity patternArity: this) {
                fw.write(patternArity + "\n");
            }
            fw.close();
        } catch (Exception exception) {
            exception.printStackTrace();
        } finally {
            System.out.println("Patterns arities saved to " + fileName);
        }
    }

    public int arityOrigPattern(Pattern pattern, boolean orig) {
        PatternArity temp;
        if (orig) {
            temp = new PatternArity(pattern.getElement().getName(),pattern.getElement().attributeValue(ESXAttributeName.ABSOLUTEORIGPATTERNMMLID),-1);
        } else {
            temp = new PatternArity(pattern.getElement().getName(),pattern.getElement().attributeValue(ESXAttributeName.ABSOLUTEPATTERNMMLID),-1);
        }
        for (PatternArity patternArity: this) {
            if (temp.equals(patternArity)) {
                return patternArity.getArity();
            }
        }
        return -1;
    }

    public int arityOrigPattern(Attribute attribute) {
        PatternArity temp = new PatternArity(ESXElementName.ATTRIBUTE_PATTERN,attribute.getElement().attributeValue(ESXAttributeName.ABSOLUTEPATTERNMMLID),-1);
        for (PatternArity patternArity: this) {
            if (temp.equals(patternArity)) {
                return patternArity.getArity();
            }
        }
        return -1;
    }

    public int arityOrigPattern(Term term) {
        PatternArity temp = new PatternArity(ESXElementName.INFIXFUNCTOR_PATTERN,term.getElement().attributeValue(ESXAttributeName.ABSOLUTEPATTERNMMLID),-1);
        for (PatternArity patternArity: this) {
            if (temp.equals(patternArity)) {
                return patternArity.getArity();
            }
        }
        return -1;
    }

    public int arityOrigPattern(Formula formula) {
        PatternArity temp = new PatternArity(ESXElementName.PREDICATE_PATTERN,formula.getElement().attributeValue(ESXAttributeName.ABSOLUTEPATTERNMMLID),-1);
        for (PatternArity patternArity: this) {
            if (temp.equals(patternArity)) {
                return patternArity.getArity();
            }
        }
        return -1;
    }
}
