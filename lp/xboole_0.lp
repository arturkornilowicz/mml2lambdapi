require open lp.predicatelogic;
require open lp.hidden;
require open lp.tarski;

// Scheme

opaque symbol Sch_Separation_1 (A : U) (P : U → U)  : 
Prf (`exists X, `forall x, iff (∈_HIDDEN_3 x X ) (and (∈_HIDDEN_3 x (A  )) (P x ))) ≔ 
begin
  abort;

// Definition

// Attribute

// SimplePredicativeDefiniens
symbol empty_XBOOLE_0_1 (X:U) ≔ not (`exists x, ∈_HIDDEN_3 x X );

// Cluster

// Existential

opaque symbol Cl_57_9 : Prf (`exists a, and (object_HIDDEN_1 a) ((empty_XBOOLE_0_1 a))) ≔ 
begin
  abort;

// Definition

// Functor

// SimpleEquationalDefiniens
symbol ∅_XBOOLE_0_1 ≔ theGlobalChoice;

// Type Specification

opaque symbol TS_69_6 : Prf (set_HIDDEN_2 (∅_XBOOLE_0_1 )) ≔ 
begin
  abort;

// Definition

// Functor
symbol ∪_XBOOLE_0_2 : U → U → U ;

// SimplePredicativeDefiniens
symbol ∪_XBOOLE_0_2-def (X:U) (Y:U) ≔ `forall x, iff (∈_HIDDEN_3 x (∪_XBOOLE_0_2 X Y  )) (or (∈_HIDDEN_3 x X ) (∈_HIDDEN_3 x Y ));

// Type Specification

opaque symbol TS_72_6 : Prf (`forall X, imp (set_HIDDEN_2  X) (`forall Y, imp (set_HIDDEN_2  Y) (set_HIDDEN_2 (∪_XBOOLE_0_2 X Y )))) ≔ 
begin
  abort;

// Definition

// Functor
symbol ∩_XBOOLE_0_3 : U → U → U ;

// SimplePredicativeDefiniens
symbol ∩_XBOOLE_0_3-def (X:U) (Y:U) ≔ `forall x, iff (∈_HIDDEN_3 x (∩_XBOOLE_0_3 X Y  )) (and (∈_HIDDEN_3 x X ) (∈_HIDDEN_3 x Y ));

// Type Specification

opaque symbol TS_102_6 : Prf (`forall X, imp (set_HIDDEN_2  X) (`forall Y, imp (set_HIDDEN_2  Y) (set_HIDDEN_2 (∩_XBOOLE_0_3 X Y )))) ≔ 
begin
  abort;

// Definition

// Functor
symbol \_XBOOLE_0_4 : U → U → U ;

// SimplePredicativeDefiniens
symbol \_XBOOLE_0_4-def (X:U) (Y:U) ≔ `forall x, iff (∈_HIDDEN_3 x (\_XBOOLE_0_4 X Y  )) (and (∈_HIDDEN_3 x X ) (not (∈_HIDDEN_3 x Y )));

// Type Specification

opaque symbol TS_125_6 : Prf (`forall X, imp (set_HIDDEN_2  X) (`forall Y, imp (set_HIDDEN_2  Y) (set_HIDDEN_2 (\_XBOOLE_0_4 X Y )))) ≔ 
begin
  abort;

// Definition

// Functor

// SimpleEquationalDefiniens
symbol ⊕_XBOOLE_0_5 (X:U) (Y:U) ≔ (∪_XBOOLE_0_2 (\_XBOOLE_0_4 X Y ) (\_XBOOLE_0_4 Y X ) );

// Type Specification

opaque symbol TS_150_6 : Prf (`forall X, imp (set_HIDDEN_2  X) (`forall Y, imp (set_HIDDEN_2  Y) (set_HIDDEN_2 (⊕_XBOOLE_0_5 X Y )))) ≔ 
begin
  abort;

// Definition

// Predicate

// SimplePredicativeDefiniens
symbol misses_XBOOLE_0_1 (X:U) (Y:U) ≔ =_HIDDEN_1 ((∩_XBOOLE_0_3 X Y ) )((∅_XBOOLE_0_1 ) );

// Definition

// Predicate

// SimplePredicativeDefiniens
symbol ⊂_XBOOLE_0_2 (X:U) (Y:U) ≔ and (⊆_TARSKI_1 X Y ) (≠_HIDDEN_2 X Y );

// Definition

// Predicate

// SimplePredicativeDefiniens
symbol are_c=-comparable_XBOOLE_0_3 (X:U) (Y:U) ≔ or (⊆_TARSKI_1 X Y ) (⊆_TARSKI_1 Y X );

// Redefinition

// Predicate

// SimplePredicativeDefiniens
symbol =_XBOOLE_0_4 (X:U) (Y:U) ≔ and (⊆_TARSKI_1 X Y ) (⊆_TARSKI_1 Y X );

// Predicate Antonym
symbol meets_XBOOLE_0_5 (X:U) (Y:U) ≔ not (misses_XBOOLE_0_1 X Y );

opaque symbol Th_XBOOLE_0_1 : Prf (`forall X, `forall Y, `forall x, iff (∈_HIDDEN_3 x ((⊕_XBOOLE_0_5 X Y ) )) (not (iff (∈_HIDDEN_3 x X ) (∈_HIDDEN_3 x Y )))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_0_2 : Prf (`forall X, `forall Y, `forall Z, imp (`forall x, iff (not (∈_HIDDEN_3 x X )) (iff (∈_HIDDEN_3 x Y ) (∈_HIDDEN_3 x Z ))) (=_XBOOLE_0_4 X ((⊕_XBOOLE_0_5 Y Z ) ))) ≔ 
begin
  abort;

// Cluster

// Functorial

opaque symbol Cl_201_9 : Prf ((empty_XBOOLE_0_1 (∅_XBOOLE_0_1 ))) ≔ 
begin
  abort;

// Cluster

// Functorial

opaque symbol Cl_207_9 (x:U)  : Prf ((not (empty_XBOOLE_0_1 (enum_TARSKI_1 x )))) ≔ 
begin
  abort;

// Cluster

// Functorial

opaque symbol Cl_214_9 (x:U) (y:U)  : Prf ((not (empty_XBOOLE_0_1 (enum_TARSKI_2 x y )))) ≔ 
begin
  abort;

// Cluster

// Existential

opaque symbol Cl_223_9 : Prf (`exists a, and (object_HIDDEN_1 a) ((not (empty_XBOOLE_0_1 a)))) ≔ 
begin
  abort;

// Cluster

// Functorial

opaque symbol Cl_233_9 (D:U) (X:U)  : Prf ((not (empty_XBOOLE_0_1 (∪_XBOOLE_0_2 D X )))) ≔ 
begin
  abort;

// Cluster

// Functorial

opaque symbol Cl_241_9 (D:U) (X:U)  : Prf ((not (empty_XBOOLE_0_1 (∪_XBOOLE_0_2 X D )))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_0_3 : Prf (`forall X, `forall Y, iff (meets_XBOOLE_0_5 X Y ) (`exists x, and (∈_HIDDEN_3 x X ) (∈_HIDDEN_3 x Y ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_0_4 : Prf (`forall X, `forall Y, iff (meets_XBOOLE_0_5 X Y ) (`exists x, ∈_HIDDEN_3 x ((∩_XBOOLE_0_3 X Y ) ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_0_5 : Prf (`forall X, `forall Y, `forall x, imp (and (misses_XBOOLE_0_1 X Y ) (∈_HIDDEN_3 x ((∪_XBOOLE_0_2 X Y ) ))) (or (and (∈_HIDDEN_3 x X ) (not (∈_HIDDEN_3 x Y ))) (and (∈_HIDDEN_3 x Y ) (not (∈_HIDDEN_3 x X ))))) ≔ 
begin
  abort;

// Scheme

opaque symbol Sch_Extensionality_2 (X : U) (Y : U) (P : U → U)  : 
Prf (`forall x, iff (∈_HIDDEN_3 x (X  )) (P x )) →
Prf (`forall x, iff (∈_HIDDEN_3 x (Y  )) (P x )) → 
Prf (=_XBOOLE_0_4 (X  )(Y  )) ≔ 
begin
  abort;

// Scheme

opaque symbol Sch_SetEq_3 (P : U → U)  : 
Prf (`forall X1, `forall X2, imp (and (`forall x, iff (∈_HIDDEN_3 x X1 ) (P x )) (`forall x, iff (∈_HIDDEN_3 x X2 ) (P x ))) (=_XBOOLE_0_4 X1 X2 )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_0_6 : Prf (`forall X, `forall Y, imp (⊂_XBOOLE_0_2 X Y ) (`exists x, and (∈_HIDDEN_3 x Y ) (not (∈_HIDDEN_3 x X )))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_0_7 : Prf (`forall X, imp (≠_HIDDEN_2 X ((∅_XBOOLE_0_1 ) )) (`exists x, ∈_HIDDEN_3 x X )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_0_8 : Prf (`forall X, `forall Y, imp (⊂_XBOOLE_0_2 X Y ) (`exists x, and (∈_HIDDEN_3 x Y ) (⊆_TARSKI_1 X ((\_XBOOLE_0_4 Y (enum_TARSKI_1 x ) ) )))) ≔ 
begin
  abort;

// Predicate Antonym
symbol ⊈_XBOOLE_0_6 (x:U) (y:U) ≔ not (⊆_TARSKI_1 x y );

// Predicate Antonym
symbol ∉_XBOOLE_0_7 (x:U) (y:U) ≔ not (∈_HIDDEN_3 x y );
