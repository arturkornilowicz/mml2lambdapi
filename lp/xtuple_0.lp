require open lp.predicatelogic;
require open lp.hidden;
require open lp.tarski;
require open lp.xboole_0;

// Definition

// Attribute

// SimplePredicativeDefiniens
symbol pair_XTUPLE_0_1 (x:U) ≔ `exists x1, `exists x2, =_HIDDEN_1 x ((pair_TARSKI_4 x1 x2 ) );

// Cluster

// Functorial

opaque symbol Cl_38_8 (x1:U) (x2:U)  : Prf ((pair_XTUPLE_0_1 (pair_TARSKI_4 x1 x2 ))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_1 : Prf (`forall x1, `forall x2, `forall y1, `forall y2, imp (=_HIDDEN_1 ((pair_TARSKI_4 x1 x2 ) )((pair_TARSKI_4 y1 y2 ) )) (and (=_HIDDEN_1 x1 y1 ) (=_HIDDEN_1 x2 y2 ))) ≔ 
begin
  abort;

// Definition

// Functor
symbol '1_XTUPLE_0_1 : U → U ;

// SimplePredicativeDefiniens
symbol '1_XTUPLE_0_1-def (x:U) ≔ `forall y1, `forall y2, imp (=_HIDDEN_1 x ((pair_TARSKI_4 y1 y2 ) )) (=_HIDDEN_1 ('1_XTUPLE_0_1 x  )y1 );

// Type Specification

opaque symbol TS_94_6 : Prf (`forall x, imp (object_HIDDEN_1  x) (object_HIDDEN_1 ('1_XTUPLE_0_1 x ))) ≔ 
begin
  abort;

// Definition

// Functor
symbol '2_XTUPLE_0_2 : U → U ;

// SimplePredicativeDefiniens
symbol '2_XTUPLE_0_2-def (x:U) ≔ `forall y1, `forall y2, imp (=_HIDDEN_1 x ((pair_TARSKI_4 y1 y2 ) )) (=_HIDDEN_1 ('2_XTUPLE_0_2 x  )y2 );

// Type Specification

opaque symbol TS_110_6 : Prf (`forall x, imp (object_HIDDEN_1  x) (object_HIDDEN_1 ('2_XTUPLE_0_2 x ))) ≔ 
begin
  abort;

// Reduction

opaque symbol Red_129_7 (x1:U) (x2:U)  : Prf (=_HIDDEN_1('1_XTUPLE_0_1 (pair_TARSKI_4 x1 x2 ) ) x1) ≔ 
begin
  abort;

// Reduction

opaque symbol Red_131_7 (x1:U) (x2:U)  : Prf (=_HIDDEN_1('2_XTUPLE_0_2 (pair_TARSKI_4 x1 x2 ) ) x2) ≔ 
begin
  abort;

// Cluster

// Existential

opaque symbol Cl_136_8 : Prf (`exists a, and (object_HIDDEN_1 a) ((pair_XTUPLE_0_1 a))) ≔ 
begin
  abort;

// Reduction

opaque symbol Red_145_7 (x:U)  : Prf (=_HIDDEN_1(pair_TARSKI_4 ('1_XTUPLE_0_1 x ) ('2_XTUPLE_0_2 x ) ) x) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_2 : Prf (`forall a, `forall b, imp (and (=_HIDDEN_1 (('1_XTUPLE_0_1 a ) )(('1_XTUPLE_0_1 b ) )) (=_HIDDEN_1 (('2_XTUPLE_0_2 a ) )(('2_XTUPLE_0_2 b ) ))) (=_HIDDEN_1 a b )) ≔ 
begin
  abort;

// Definition

// Functor

// SimpleEquationalDefiniens
symbol triple_XTUPLE_0_3 (x1:U) (x2:U) (x3:U) ≔ (pair_TARSKI_4 (pair_TARSKI_4 x1 x2 ) x3 );

// Type Specification

opaque symbol TS_166_6 : Prf (`forall x1, imp (object_HIDDEN_1  x1) (`forall x2, imp (object_HIDDEN_1  x2) (`forall x3, imp (object_HIDDEN_1  x3) (object_HIDDEN_1 (triple_XTUPLE_0_3 x1 x2 x3 ))))) ≔ 
begin
  abort;

// Definition

// Attribute

// SimplePredicativeDefiniens
symbol triple_XTUPLE_0_2 (x:U) ≔ `exists x1, `exists x2, `exists x3, =_HIDDEN_1 x ((triple_XTUPLE_0_3 x1 x2 x3 ) );

// Cluster

// Functorial

opaque symbol Cl_177_8 (x1:U) (x2:U) (x3:U)  : Prf ((triple_XTUPLE_0_2 (triple_XTUPLE_0_3 x1 x2 x3 ))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_3 : Prf (`forall x1, `forall x2, `forall x3, `forall y1, `forall y2, `forall y3, imp (=_HIDDEN_1 ((triple_XTUPLE_0_3 x1 x2 x3 ) )((triple_XTUPLE_0_3 y1 y2 y3 ) )) (and (and (=_HIDDEN_1 x1 y1 ) (=_HIDDEN_1 x2 y2 )) (=_HIDDEN_1 x3 y3 ))) ≔ 
begin
  abort;

// Cluster

// Existential

opaque symbol Cl_191_8 : Prf (`exists a, and (object_HIDDEN_1 a) ((triple_XTUPLE_0_2 a))) ≔ 
begin
  abort;

// Cluster

// Conditional

opaque symbol Cl_197_8 : Prf (`forall a, imp (object_HIDDEN_1 a) (imp (triple_XTUPLE_0_2 a) (pair_XTUPLE_0_1 a))) ≔ 
begin
  abort;

// Definition

// Functor

// SimpleEquationalDefiniens
symbol '1_3_XTUPLE_0_4 (x:U) ≔ ('1_XTUPLE_0_1 ('1_XTUPLE_0_1 x ) );

// Type Specification

opaque symbol TS_203_6 : Prf (`forall x, imp (object_HIDDEN_1  x) (object_HIDDEN_1 ('1_3_XTUPLE_0_4 x ))) ≔ 
begin
  abort;

// Definition

// Functor

// SimpleEquationalDefiniens
symbol '2_3_XTUPLE_0_5 (x:U) ≔ ('2_XTUPLE_0_2 ('1_XTUPLE_0_1 x ) );

// Type Specification

opaque symbol TS_205_6 : Prf (`forall x, imp (object_HIDDEN_1  x) (object_HIDDEN_1 ('2_3_XTUPLE_0_5 x ))) ≔ 
begin
  abort;

// Functor Synonym
symbol '3_3_XTUPLE_0_6 (x:U) ≔ '2_XTUPLE_0_2 x ;

// Reduction

opaque symbol Red_215_7 (x1:U) (x2:U) (x3:U)  : Prf (=_HIDDEN_1('1_3_XTUPLE_0_4 (triple_XTUPLE_0_3 x1 x2 x3 ) ) x1) ≔ 
begin
  abort;

// Reduction

opaque symbol Red_217_7 (x1:U) (x2:U) (x3:U)  : Prf (=_HIDDEN_1('2_3_XTUPLE_0_5 (triple_XTUPLE_0_3 x1 x2 x3 ) ) x2) ≔ 
begin
  abort;

// Reduction

opaque symbol Red_219_7 (x1:U) (x2:U) (x3:U)  : Prf (=_HIDDEN_1('3_3_XTUPLE_0_6 (triple_XTUPLE_0_3 x1 x2 x3 ) ) x3) ≔ 
begin
  abort;

// Reduction

opaque symbol Red_224_7 (x:U)  : Prf (=_HIDDEN_1(triple_XTUPLE_0_3 ('1_3_XTUPLE_0_4 x ) ('2_3_XTUPLE_0_5 x ) ('3_3_XTUPLE_0_6 x ) ) x) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_4 : Prf (`forall a, `forall b, imp (and (and (=_HIDDEN_1 (('1_3_XTUPLE_0_4 a ) )(('1_3_XTUPLE_0_4 b ) )) (=_HIDDEN_1 (('2_3_XTUPLE_0_5 a ) )(('2_3_XTUPLE_0_5 b ) ))) (=_HIDDEN_1 (('3_3_XTUPLE_0_6 a ) )(('3_3_XTUPLE_0_6 b ) ))) (=_HIDDEN_1 a b )) ≔ 
begin
  abort;

// Definition

// Functor

// SimpleEquationalDefiniens
symbol quadruple_XTUPLE_0_7 (x1:U) (x2:U) (x3:U) (x4:U) ≔ (pair_TARSKI_4 (triple_XTUPLE_0_3 x1 x2 x3 ) x4 );

// Type Specification

opaque symbol TS_247_6 : Prf (`forall x1, imp (object_HIDDEN_1  x1) (`forall x2, imp (object_HIDDEN_1  x2) (`forall x3, imp (object_HIDDEN_1  x3) (`forall x4, imp (object_HIDDEN_1  x4) (object_HIDDEN_1 (quadruple_XTUPLE_0_7 x1 x2 x3 x4 )))))) ≔ 
begin
  abort;

// Definition

// Attribute

// SimplePredicativeDefiniens
symbol quadruple_XTUPLE_0_3 (x:U) ≔ `exists x1, `exists x2, `exists x3, `exists x4, =_HIDDEN_1 x ((quadruple_XTUPLE_0_7 x1 x2 x3 x4 ) );

// Cluster

// Functorial

opaque symbol Cl_258_8 (x1:U) (x2:U) (x3:U) (x4:U)  : Prf ((quadruple_XTUPLE_0_3 (quadruple_XTUPLE_0_7 x1 x2 x3 x4 ))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_5 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall y1, `forall y2, `forall y3, `forall y4, imp (=_HIDDEN_1 ((quadruple_XTUPLE_0_7 x1 x2 x3 x4 ) )((quadruple_XTUPLE_0_7 y1 y2 y3 y4 ) )) (and (and (and (=_HIDDEN_1 x1 y1 ) (=_HIDDEN_1 x2 y2 )) (=_HIDDEN_1 x3 y3 )) (=_HIDDEN_1 x4 y4 ))) ≔ 
begin
  abort;

// Cluster

// Existential

opaque symbol Cl_273_8 : Prf (`exists a, and (object_HIDDEN_1 a) ((quadruple_XTUPLE_0_3 a))) ≔ 
begin
  abort;

// Cluster

// Conditional

opaque symbol Cl_280_8 : Prf (`forall a, imp (object_HIDDEN_1 a) (imp (quadruple_XTUPLE_0_3 a) (triple_XTUPLE_0_2 a))) ≔ 
begin
  abort;

// Definition

// Functor

// SimpleEquationalDefiniens
symbol '1_4_XTUPLE_0_8 (x:U) ≔ ('1_XTUPLE_0_1 ('1_XTUPLE_0_1 ('1_XTUPLE_0_1 x ) ) );

// Type Specification

opaque symbol TS_292_6 : Prf (`forall x, imp (object_HIDDEN_1  x) (object_HIDDEN_1 ('1_4_XTUPLE_0_8 x ))) ≔ 
begin
  abort;

// Definition

// Functor

// SimpleEquationalDefiniens
symbol '2_4_XTUPLE_0_9 (x:U) ≔ ('2_XTUPLE_0_2 ('1_XTUPLE_0_1 ('1_XTUPLE_0_1 x ) ) );

// Type Specification

opaque symbol TS_294_6 : Prf (`forall x, imp (object_HIDDEN_1  x) (object_HIDDEN_1 ('2_4_XTUPLE_0_9 x ))) ≔ 
begin
  abort;

// Functor Synonym
symbol '3_4_XTUPLE_0_10 (x:U) ≔ '2_3_XTUPLE_0_5 x ;

// Functor Synonym
symbol '4_4_XTUPLE_0_11 (x:U) ≔ '2_XTUPLE_0_2 x ;

// Reduction

opaque symbol Red_304_7 (x1:U) (x2:U) (x3:U) (x4:U)  : Prf (=_HIDDEN_1('1_4_XTUPLE_0_8 (quadruple_XTUPLE_0_7 x1 x2 x3 x4 ) ) x1) ≔ 
begin
  abort;

// Reduction

opaque symbol Red_306_7 (x1:U) (x2:U) (x3:U) (x4:U)  : Prf (=_HIDDEN_1('2_4_XTUPLE_0_9 (quadruple_XTUPLE_0_7 x1 x2 x3 x4 ) ) x2) ≔ 
begin
  abort;

// Reduction

opaque symbol Red_308_7 (x1:U) (x2:U) (x3:U) (x4:U)  : Prf (=_HIDDEN_1('3_4_XTUPLE_0_10 (quadruple_XTUPLE_0_7 x1 x2 x3 x4 ) ) x3) ≔ 
begin
  abort;

// Reduction

opaque symbol Red_310_7 (x1:U) (x2:U) (x3:U) (x4:U)  : Prf (=_HIDDEN_1('4_4_XTUPLE_0_11 (quadruple_XTUPLE_0_7 x1 x2 x3 x4 ) ) x4) ≔ 
begin
  abort;

// Reduction

opaque symbol Red_315_7 (x:U)  : Prf (=_HIDDEN_1(quadruple_XTUPLE_0_7 ('1_4_XTUPLE_0_8 x ) ('2_4_XTUPLE_0_9 x ) ('3_4_XTUPLE_0_10 x ) ('4_4_XTUPLE_0_11 x ) ) x) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_6 : Prf (`forall x, `forall y, `forall X, imp (∈_HIDDEN_3 ((pair_TARSKI_4 x y ) )X ) (∈_HIDDEN_3 x ((union_TARSKI_3 (union_TARSKI_3 X ) ) ))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_7 : Prf (`forall x, `forall y, `forall X, imp (∈_HIDDEN_3 ((pair_TARSKI_4 x y ) )X ) (∈_HIDDEN_3 y ((union_TARSKI_3 (union_TARSKI_3 X ) ) ))) ≔ 
begin
  abort;

// Definition

// Functor
symbol proj1_XTUPLE_0_12 : U → U ;

// SimplePredicativeDefiniens
symbol proj1_XTUPLE_0_12-def (X:U) ≔ `forall x, iff (∈_HIDDEN_3 x (proj1_XTUPLE_0_12 X  )) (`exists y, ∈_HIDDEN_3 ((pair_TARSKI_4 x y ) )X );

// Type Specification

opaque symbol TS_354_6 : Prf (`forall X, imp (set_HIDDEN_2  X) (set_HIDDEN_2 (proj1_XTUPLE_0_12 X ))) ≔ 
begin
  abort;

// Definition

// Functor
symbol proj2_XTUPLE_0_13 : U → U ;

// SimplePredicativeDefiniens
symbol proj2_XTUPLE_0_13-def (X:U) ≔ `forall x, iff (∈_HIDDEN_3 x (proj2_XTUPLE_0_13 X  )) (`exists y, ∈_HIDDEN_3 ((pair_TARSKI_4 y x ) )X );

// Type Specification

opaque symbol TS_384_6 : Prf (`forall X, imp (set_HIDDEN_2  X) (set_HIDDEN_2 (proj2_XTUPLE_0_13 X ))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_8 : Prf (`forall X, `forall Y, imp (⊆_TARSKI_1 X Y ) (⊆_TARSKI_1 ((proj1_XTUPLE_0_12 X ) )((proj1_XTUPLE_0_12 Y ) ))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_9 : Prf (`forall X, `forall Y, imp (⊆_TARSKI_1 X Y ) (⊆_TARSKI_1 ((proj2_XTUPLE_0_13 X ) )((proj2_XTUPLE_0_13 Y ) ))) ≔ 
begin
  abort;

// Definition

// Functor

// SimpleEquationalDefiniens
symbol proj1_3_XTUPLE_0_14 (X:U) ≔ (proj1_XTUPLE_0_12 (proj1_XTUPLE_0_12 X ) );

// Type Specification

opaque symbol TS_442_6 : Prf (`forall X, imp (set_HIDDEN_2  X) (set_HIDDEN_2 (proj1_3_XTUPLE_0_14 X ))) ≔ 
begin
  abort;

// Definition

// Functor

// SimpleEquationalDefiniens
symbol proj2_3_XTUPLE_0_15 (X:U) ≔ (proj2_XTUPLE_0_13 (proj1_XTUPLE_0_12 X ) );

// Type Specification

opaque symbol TS_445_6 : Prf (`forall X, imp (set_HIDDEN_2  X) (set_HIDDEN_2 (proj2_3_XTUPLE_0_15 X ))) ≔ 
begin
  abort;

// Functor Synonym
symbol proj3_3_XTUPLE_0_16 (X:U) ≔ proj2_XTUPLE_0_13 X ;

opaque symbol Th_XTUPLE_0_10 : Prf (`forall X, `forall Y, imp (⊆_TARSKI_1 X Y ) (⊆_TARSKI_1 ((proj1_3_XTUPLE_0_14 X ) )((proj1_3_XTUPLE_0_14 Y ) ))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_11 : Prf (`forall X, `forall Y, imp (⊆_TARSKI_1 X Y ) (⊆_TARSKI_1 ((proj2_3_XTUPLE_0_15 X ) )((proj2_3_XTUPLE_0_15 Y ) ))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_12 : Prf (`forall x, `forall X, imp (∈_HIDDEN_3 x ((proj1_3_XTUPLE_0_14 X ) )) (`exists y, `exists z, ∈_HIDDEN_3 ((triple_XTUPLE_0_3 x y z ) )X )) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_13 : Prf (`forall x, `forall y, `forall z, `forall X, imp (∈_HIDDEN_3 ((triple_XTUPLE_0_3 x y z ) )X ) (∈_HIDDEN_3 x ((proj1_3_XTUPLE_0_14 X ) ))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_14 : Prf (`forall x, `forall X, imp (∈_HIDDEN_3 x ((proj2_3_XTUPLE_0_15 X ) )) (`exists y, `exists z, ∈_HIDDEN_3 ((triple_XTUPLE_0_3 y x z ) )X )) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_15 : Prf (`forall x, `forall y, `forall z, `forall X, imp (∈_HIDDEN_3 ((triple_XTUPLE_0_3 x y z ) )X ) (∈_HIDDEN_3 y ((proj2_3_XTUPLE_0_15 X ) ))) ≔ 
begin
  abort;

// Definition

// Functor

// SimpleEquationalDefiniens
symbol proj1_4_XTUPLE_0_17 (X:U) ≔ (proj1_XTUPLE_0_12 (proj1_3_XTUPLE_0_14 X ) );

// Type Specification

opaque symbol TS_508_4 : Prf (`forall X, imp (set_HIDDEN_2  X) (set_HIDDEN_2 (proj1_4_XTUPLE_0_17 X ))) ≔ 
begin
  abort;

// Definition

// Functor

// SimpleEquationalDefiniens
symbol proj2_4_XTUPLE_0_18 (X:U) ≔ (proj2_XTUPLE_0_13 (proj1_3_XTUPLE_0_14 X ) );

// Type Specification

opaque symbol TS_511_6 : Prf (`forall X, imp (set_HIDDEN_2  X) (set_HIDDEN_2 (proj2_4_XTUPLE_0_18 X ))) ≔ 
begin
  abort;

// Functor Synonym
symbol proj3_4_XTUPLE_0_19 (X:U) ≔ proj2_3_XTUPLE_0_15 X ;

// Functor Synonym
symbol proj4_4_XTUPLE_0_20 (X:U) ≔ proj2_XTUPLE_0_13 X ;

opaque symbol Th_XTUPLE_0_16 : Prf (`forall X, `forall Y, imp (⊆_TARSKI_1 X Y ) (⊆_TARSKI_1 ((proj1_4_XTUPLE_0_17 X ) )((proj1_4_XTUPLE_0_17 Y ) ))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_17 : Prf (`forall X, `forall Y, imp (⊆_TARSKI_1 X Y ) (⊆_TARSKI_1 ((proj2_4_XTUPLE_0_18 X ) )((proj2_4_XTUPLE_0_18 Y ) ))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_18 : Prf (`forall x, `forall X, imp (∈_HIDDEN_3 x ((proj1_4_XTUPLE_0_17 X ) )) (`exists x1, `exists x2, `exists x3, ∈_HIDDEN_3 ((quadruple_XTUPLE_0_7 x x1 x2 x3 ) )X )) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_19 : Prf (`forall x, `forall x1, `forall x2, `forall x3, `forall X, imp (∈_HIDDEN_3 ((quadruple_XTUPLE_0_7 x x1 x2 x3 ) )X ) (∈_HIDDEN_3 x ((proj1_4_XTUPLE_0_17 X ) ))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_20 : Prf (`forall x, `forall X, imp (∈_HIDDEN_3 x ((proj2_4_XTUPLE_0_18 X ) )) (`exists x1, `exists x2, `exists x3, ∈_HIDDEN_3 ((quadruple_XTUPLE_0_7 x1 x x2 x3 ) )X )) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_21 : Prf (`forall x, `forall x1, `forall x2, `forall x3, `forall X, imp (∈_HIDDEN_3 ((quadruple_XTUPLE_0_7 x1 x x2 x3 ) )X ) (∈_HIDDEN_3 x ((proj2_4_XTUPLE_0_18 X ) ))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_22 : Prf (`forall a, `forall b, imp (and (and (and (=_HIDDEN_1 (('1_4_XTUPLE_0_8 a ) )(('1_4_XTUPLE_0_8 b ) )) (=_HIDDEN_1 (('2_4_XTUPLE_0_9 a ) )(('2_4_XTUPLE_0_9 b ) ))) (=_HIDDEN_1 (('3_4_XTUPLE_0_10 a ) )(('3_4_XTUPLE_0_10 b ) ))) (=_HIDDEN_1 (('4_4_XTUPLE_0_11 a ) )(('4_4_XTUPLE_0_11 b ) ))) (=_HIDDEN_1 a b )) ≔ 
begin
  abort;

// Cluster

// Functorial

opaque symbol Cl_592_8 (X:U)  : Prf ((empty_XBOOLE_0_1 (proj1_XTUPLE_0_12 X ))) ≔ 
begin
  abort;

// Cluster

// Functorial

opaque symbol Cl_604_8 (X:U)  : Prf ((empty_XBOOLE_0_1 (proj2_XTUPLE_0_13 X ))) ≔ 
begin
  abort;

// Cluster

// Functorial

opaque symbol Cl_616_8 (X:U)  : Prf ((empty_XBOOLE_0_1 (proj1_3_XTUPLE_0_14 X ))) ≔ 
begin
  abort;

// Cluster

// Functorial

opaque symbol Cl_621_8 (X:U)  : Prf ((empty_XBOOLE_0_1 (proj2_3_XTUPLE_0_15 X ))) ≔ 
begin
  abort;

// Cluster

// Functorial

opaque symbol Cl_626_8 (X:U)  : Prf ((empty_XBOOLE_0_1 (proj1_4_XTUPLE_0_17 X ))) ≔ 
begin
  abort;

// Cluster

// Functorial

opaque symbol Cl_631_8 (X:U)  : Prf ((empty_XBOOLE_0_1 (proj2_4_XTUPLE_0_18 X ))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_23 : Prf (`forall X, `forall Y, =_XBOOLE_0_4 ((proj1_XTUPLE_0_12 (∪_XBOOLE_0_2 X Y ) ) )((∪_XBOOLE_0_2 (proj1_XTUPLE_0_12 X ) (proj1_XTUPLE_0_12 Y ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_24 : Prf (`forall X, `forall Y, ⊆_TARSKI_1 ((proj1_XTUPLE_0_12 (∩_XBOOLE_0_3 X Y ) ) )((∩_XBOOLE_0_3 (proj1_XTUPLE_0_12 X ) (proj1_XTUPLE_0_12 Y ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_25 : Prf (`forall X, `forall Y, ⊆_TARSKI_1 ((\_XBOOLE_0_4 (proj1_XTUPLE_0_12 X ) (proj1_XTUPLE_0_12 Y ) ) )((proj1_XTUPLE_0_12 (\_XBOOLE_0_4 X Y ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_26 : Prf (`forall X, `forall Y, ⊆_TARSKI_1 ((⊕_XBOOLE_0_5 (proj1_XTUPLE_0_12 X ) (proj1_XTUPLE_0_12 Y ) ) )((proj1_XTUPLE_0_12 (⊕_XBOOLE_0_5 X Y ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_27 : Prf (`forall X, `forall Y, =_XBOOLE_0_4 ((proj2_XTUPLE_0_13 (∪_XBOOLE_0_2 X Y ) ) )((∪_XBOOLE_0_2 (proj2_XTUPLE_0_13 X ) (proj2_XTUPLE_0_13 Y ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_28 : Prf (`forall X, `forall Y, ⊆_TARSKI_1 ((proj2_XTUPLE_0_13 (∩_XBOOLE_0_3 X Y ) ) )((∩_XBOOLE_0_3 (proj2_XTUPLE_0_13 X ) (proj2_XTUPLE_0_13 Y ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_29 : Prf (`forall X, `forall Y, ⊆_TARSKI_1 ((\_XBOOLE_0_4 (proj2_XTUPLE_0_13 X ) (proj2_XTUPLE_0_13 Y ) ) )((proj2_XTUPLE_0_13 (\_XBOOLE_0_4 X Y ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_30 : Prf (`forall X, `forall Y, ⊆_TARSKI_1 ((⊕_XBOOLE_0_5 (proj2_XTUPLE_0_13 X ) (proj2_XTUPLE_0_13 Y ) ) )((proj2_XTUPLE_0_13 (⊕_XBOOLE_0_5 X Y ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_31 : Prf (`forall X, `forall Y, =_XBOOLE_0_4 ((proj1_3_XTUPLE_0_14 (∪_XBOOLE_0_2 X Y ) ) )((∪_XBOOLE_0_2 (proj1_3_XTUPLE_0_14 X ) (proj1_3_XTUPLE_0_14 Y ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_32 : Prf (`forall X, `forall Y, ⊆_TARSKI_1 ((proj1_3_XTUPLE_0_14 (∩_XBOOLE_0_3 X Y ) ) )((∩_XBOOLE_0_3 (proj1_3_XTUPLE_0_14 X ) (proj1_3_XTUPLE_0_14 Y ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_33 : Prf (`forall X, `forall Y, ⊆_TARSKI_1 ((\_XBOOLE_0_4 (proj1_3_XTUPLE_0_14 X ) (proj1_3_XTUPLE_0_14 Y ) ) )((proj1_3_XTUPLE_0_14 (\_XBOOLE_0_4 X Y ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_34 : Prf (`forall X, `forall Y, ⊆_TARSKI_1 ((⊕_XBOOLE_0_5 (proj1_3_XTUPLE_0_14 X ) (proj1_3_XTUPLE_0_14 Y ) ) )((proj1_3_XTUPLE_0_14 (⊕_XBOOLE_0_5 X Y ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_35 : Prf (`forall X, `forall Y, =_XBOOLE_0_4 ((proj2_3_XTUPLE_0_15 (∪_XBOOLE_0_2 X Y ) ) )((∪_XBOOLE_0_2 (proj2_3_XTUPLE_0_15 X ) (proj2_3_XTUPLE_0_15 Y ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_36 : Prf (`forall X, `forall Y, ⊆_TARSKI_1 ((proj2_3_XTUPLE_0_15 (∩_XBOOLE_0_3 X Y ) ) )((∩_XBOOLE_0_3 (proj2_3_XTUPLE_0_15 X ) (proj2_3_XTUPLE_0_15 Y ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_37 : Prf (`forall X, `forall Y, ⊆_TARSKI_1 ((\_XBOOLE_0_4 (proj2_3_XTUPLE_0_15 X ) (proj2_3_XTUPLE_0_15 Y ) ) )((proj2_3_XTUPLE_0_15 (\_XBOOLE_0_4 X Y ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_38 : Prf (`forall X, `forall Y, ⊆_TARSKI_1 ((⊕_XBOOLE_0_5 (proj2_3_XTUPLE_0_15 X ) (proj2_3_XTUPLE_0_15 Y ) ) )((proj2_3_XTUPLE_0_15 (⊕_XBOOLE_0_5 X Y ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_39 : Prf (`forall X, `forall Y, =_XBOOLE_0_4 ((proj1_4_XTUPLE_0_17 (∪_XBOOLE_0_2 X Y ) ) )((∪_XBOOLE_0_2 (proj1_4_XTUPLE_0_17 X ) (proj1_4_XTUPLE_0_17 Y ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_40 : Prf (`forall X, `forall Y, ⊆_TARSKI_1 ((proj1_4_XTUPLE_0_17 (∩_XBOOLE_0_3 X Y ) ) )((∩_XBOOLE_0_3 (proj1_4_XTUPLE_0_17 X ) (proj1_4_XTUPLE_0_17 Y ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_41 : Prf (`forall X, `forall Y, ⊆_TARSKI_1 ((\_XBOOLE_0_4 (proj1_4_XTUPLE_0_17 X ) (proj1_4_XTUPLE_0_17 Y ) ) )((proj1_4_XTUPLE_0_17 (\_XBOOLE_0_4 X Y ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_42 : Prf (`forall X, `forall Y, ⊆_TARSKI_1 ((⊕_XBOOLE_0_5 (proj1_4_XTUPLE_0_17 X ) (proj1_4_XTUPLE_0_17 Y ) ) )((proj1_4_XTUPLE_0_17 (⊕_XBOOLE_0_5 X Y ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_43 : Prf (`forall X, `forall Y, =_XBOOLE_0_4 ((proj2_4_XTUPLE_0_18 (∪_XBOOLE_0_2 X Y ) ) )((∪_XBOOLE_0_2 (proj2_4_XTUPLE_0_18 X ) (proj2_4_XTUPLE_0_18 Y ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_44 : Prf (`forall X, `forall Y, ⊆_TARSKI_1 ((proj2_4_XTUPLE_0_18 (∩_XBOOLE_0_3 X Y ) ) )((∩_XBOOLE_0_3 (proj2_4_XTUPLE_0_18 X ) (proj2_4_XTUPLE_0_18 Y ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_45 : Prf (`forall X, `forall Y, ⊆_TARSKI_1 ((\_XBOOLE_0_4 (proj2_4_XTUPLE_0_18 X ) (proj2_4_XTUPLE_0_18 Y ) ) )((proj2_4_XTUPLE_0_18 (\_XBOOLE_0_4 X Y ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_46 : Prf (`forall X, `forall Y, ⊆_TARSKI_1 ((⊕_XBOOLE_0_5 (proj2_4_XTUPLE_0_18 X ) (proj2_4_XTUPLE_0_18 Y ) ) )((proj2_4_XTUPLE_0_18 (⊕_XBOOLE_0_5 X Y ) ) )) ≔ 
begin
  abort;
