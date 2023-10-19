package org.mizar.lambdapi;

public class Representation {

    public String repr;
    public Translation translation;

    public Representation(String repr, Translation translation) {
        this.repr = repr;
        this.translation = translation;
    }

    public Representation(String repr) {
        this(repr,null);
    }

    @Override
    public String toString() {
        return repr;
    }
}
