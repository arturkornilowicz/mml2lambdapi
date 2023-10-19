require open lp.predicatelogic;
require open lp.hidden;

opaque symbol Th_TARSKI_1 : Prf (`forall x, set_HIDDEN_2 x) ≔ 
begin
  abort;

opaque symbol Th_TARSKI_2 : Prf (`forall X, `forall Y, imp (`forall x, iff (∈_HIDDEN_3 x X ) (∈_HIDDEN_3 x Y )) (=_HIDDEN_1 X Y )) ≔ 
begin
  abort;

// Definition

// Functor
symbol enum_TARSKI_1 : U → U ;

// SimplePredicativeDefiniens
symbol enum_TARSKI_1-def (y:U) ≔ `forall x, iff (∈_HIDDEN_3 x (enum_TARSKI_1 y  )) (=_HIDDEN_1 x y );

// Type Specification

opaque symbol TS_33_6 : Prf (`forall y, imp (object_HIDDEN_1  y) (set_HIDDEN_2 (enum_TARSKI_1 y ))) ≔ 
begin
  abort;

// Definition

// Functor
symbol enum_TARSKI_2 : U → U → U ;

// SimplePredicativeDefiniens
symbol enum_TARSKI_2-def (y:U) (z:U) ≔ `forall x, iff (∈_HIDDEN_3 x (enum_TARSKI_2 y z  )) (or (=_HIDDEN_1 x y ) (=_HIDDEN_1 x z ));

// Type Specification

opaque symbol TS_52_6 : Prf (`forall y, imp (object_HIDDEN_1  y) (`forall z, imp (object_HIDDEN_1  z) (set_HIDDEN_2 (enum_TARSKI_2 y z )))) ≔ 
begin
  abort;

// Definition

// Predicate

// SimplePredicativeDefiniens
symbol ⊆_TARSKI_1 (X:U) (Y:U) ≔ `forall x, imp (∈_HIDDEN_3 x X ) (∈_HIDDEN_3 x Y );

// Definition

// Functor
symbol union_TARSKI_3 : U → U ;

// SimplePredicativeDefiniens
symbol union_TARSKI_3-def (X:U) ≔ `forall x, iff (∈_HIDDEN_3 x (union_TARSKI_3 X  )) (`exists Y, and (∈_HIDDEN_3 x Y ) (∈_HIDDEN_3 Y X ));

// Type Specification

opaque symbol TS_77_6 : Prf (`forall X, imp (set_HIDDEN_2  X) (set_HIDDEN_2 (union_TARSKI_3 X ))) ≔ 
begin
  abort;

opaque symbol Th_TARSKI_3 : Prf (`forall x, `forall X, imp (∈_HIDDEN_3 x X ) (`exists Y, and (∈_HIDDEN_3 Y X ) (not (`exists x, and (∈_HIDDEN_3 x X ) (∈_HIDDEN_3 x Y ))))) ≔ 
begin
  abort;

// Redefinition

// Predicate
symbol ∈_TARSKI_2 : U → U → U ;

// Scheme

opaque symbol Sch_Replacement_1 (A : U) (P : U → U → U)  : 
Prf (`forall x, `forall y, `forall z, imp (and (P x y ) (P x z )) (=_HIDDEN_1 y z )) → 
Prf (`exists X, `forall x, iff (∈_HIDDEN_3 x X ) (`exists y, and (∈_HIDDEN_3 y (A  )) (P y x ))) ≔ 
begin
  abort;

// Definition

// Functor

// SimpleEquationalDefiniens
symbol pair_TARSKI_4 (x:U) (y:U) ≔ (enum_TARSKI_2 (enum_TARSKI_2 x y ) (enum_TARSKI_1 x ) );

// Type Specification

opaque symbol TS_126_6 : Prf (`forall x, imp (object_HIDDEN_1  x) (`forall y, imp (object_HIDDEN_1  y) (object_HIDDEN_1 (pair_TARSKI_4 x y )))) ≔ 
begin
  abort;

// Definition

// Predicate

// SimplePredicativeDefiniens
symbol are_equipotent_TARSKI_3 (X:U) (Y:U) ≔ `exists Z, and (and (`forall x, imp (∈_HIDDEN_3 x X ) (`exists y, and (∈_HIDDEN_3 y Y ) (∈_HIDDEN_3 ((pair_TARSKI_4 x y ) )Z ))) (`forall y, imp (∈_HIDDEN_3 y Y ) (`exists x, and (∈_HIDDEN_3 x X ) (∈_HIDDEN_3 ((pair_TARSKI_4 x y ) )Z )))) (`forall x, `forall y, `forall z, `forall u, imp (and (∈_HIDDEN_3 ((pair_TARSKI_4 x y ) )Z ) (∈_HIDDEN_3 ((pair_TARSKI_4 z u ) )Z )) (iff (=_HIDDEN_1 x z ) (=_HIDDEN_1 y u )));
