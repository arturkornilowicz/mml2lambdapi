package org.mizar.classes;

import lombok.*;
import org.dom4j.*;
import org.mizar.lambdapi.*;
import org.mizar.application.*;

@AllArgsConstructor
@ToString
@Getter
@Setter

public class XMLElement {

    private Element element;

    public void preProcess() {}

    public void process() {}

    public void postProcess() {}

    public void run() {
        preProcess();
        process();
        postProcess();
    }

    public final Translation translation() {
        return MML2LambdaPiApplication.translations.translation(element);
    }

    public Representation lpRepr() {
        return new Representation(LambdaPi.unknown(getClass()));
    }
}
