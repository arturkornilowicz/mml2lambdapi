package org.mizar.translations;

import java.util.*;

public class PatternDescriptions extends LinkedList<PatternDescription> {

    public void add(String sort, String absolutePatternMMLId, String absoluteConstrMMLId) {
        add(new PatternDescription(sort,absolutePatternMMLId,absoluteConstrMMLId));
    }

    public PatternDescription get(String sort, String absolutePatternMMLId, String absoluteConstrMMLId) {
        return get(indexOf(new PatternDescription(sort,absolutePatternMMLId,absoluteConstrMMLId)));
    }
}
