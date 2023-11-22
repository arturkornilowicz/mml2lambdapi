package org.mizar.patterns;

import lombok.*;

import java.util.Objects;

@AllArgsConstructor
@Getter
public class PatternArity {

    private String kind;
    private String name;
    private Integer arity;

    @Override
    public String toString() {
        return kind + " " + name + " " + arity;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        PatternArity that = (PatternArity) o;
        return Objects.equals(kind, that.kind) && Objects.equals(name, that.name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(kind, name);
    }
}
