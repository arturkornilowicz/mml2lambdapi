require open lp.predicatelogic;

symbol theGlobalChoice ≔ true;

// Definition

// Mode
symbol object_HIDDEN_1 : U → U ;

// Definition

// Mode
symbol set_HIDDEN_2 : U → U ;

// Definition

// Predicate
symbol =_HIDDEN_1 : U → U → U ;

// Predicate Antonym
symbol ≠_HIDDEN_2 (x:U) (y:U) ≔ not (=_HIDDEN_1 x y );

// Definition

// Predicate
symbol ∈_HIDDEN_3 : U → U → U ;
