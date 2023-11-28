require open lp.predicatelogic;

symbol theGlobalChoice ≔ true;

symbol DUMMY_FRAENKEL : U;

symbol DUMMY_ARG : U;

symbol REPRESENTATION_REPRESENTATION : U;

symbol REPRESENTATION_REPRESENTATION_0 : U;

symbol REPRESENTATION_REPRESENTATION_1 : U → U;

symbol REPRESENTATION_REPRESENTATION_2 : U → U → U;

symbol REPRESENTATION_REPRESENTATION_3 : U → U → U → U;

symbol REPRESENTATION_REPRESENTATION_4 : U → U → U → U → U;

symbol REPRESENTATION_REPRESENTATION_5 : U → U → U → U → U → U;

symbol REPRESENTATION_REPRESENTATION_6 : U → U → U → U → U → U → U;

symbol REPRESENTATION_REPRESENTATION_7 : U → U → U → U → U → U → U → U;

symbol REPRESENTATION_REPRESENTATION_8 : U → U → U → U → U → U → U → U → U;

symbol REPRESENTATION_REPRESENTATION_9 : U → U → U → U → U → U → U → U → U → U;

symbol REPRESENTATION_REPRESENTATION_10 : U → U → U → U → U → U → U → U → U → U → U;

symbol IT : U;

constant symbol zero : U;
constant symbol succ (x:U) : U;

builtin "0"  ≔ zero;
builtin "+1" ≔ succ;


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
symbol ≠_HIDDEN_2 (v3:U) (v4:U) ≔ imp (and (object_HIDDEN_1 v3) (object_HIDDEN_1 v4)) (not (=_HIDDEN_1 v3 v4 ));

// Definition

// Predicate
symbol ∈_HIDDEN_3 : U → U → U ;
