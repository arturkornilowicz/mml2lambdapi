package org.mizar.translations;

import lombok.*;
import org.mizar.application.MML2LambdaPiApplication;
import org.mizar.lambdapi.Translation;

@Setter
@Getter
@ToString
@EqualsAndHashCode(exclude = {"translation"})

public class PatternDescription {

    private String absolutePatternMMLId;
    private String absoluteConstrMMLId;
    private String sort;
    private Translation translation;

    public PatternDescription(String sort, String absolutePatternMMLId, String absoluteConstrMMLId) {
        this.sort = sort;
        this.absolutePatternMMLId = absolutePatternMMLId;
        this.absoluteConstrMMLId = absoluteConstrMMLId;
        this.translation = MML2LambdaPiApplication.translations.translation(sort,absolutePatternMMLId,absoluteConstrMMLId);
    }
}
