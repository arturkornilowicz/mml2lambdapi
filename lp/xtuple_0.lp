require open lp.predicatelogic;
require open lp.hidden;
require open lp.tarski;
require open lp.xboole_0;

// Definition

// Attribute
symbol pair_XTUPLE_0_1 : U → U ;

// SimplePredicativeDefiniens

symbol pair_XTUPLE_0_1-def (v1:U) ≔ imp (object_HIDDEN_1 v1) (`exists r2,  `exists r3,  and (and (object_HIDDEN_1 r2) (object_HIDDEN_1 r3)) (=_HIDDEN_1 v1 ((pair_TARSKI_4 r2 r3 ) )));

// Cluster

// Functorial

opaque symbol Cl_42_11 (v4:U) (v5:U)  : Prf (imp (and (object_HIDDEN_1 v4) (object_HIDDEN_1 v5)) ((pair_XTUPLE_0_1 ((pair_TARSKI_4 v4 v5 )) ))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_1 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r7,  imp (object_HIDDEN_1 r7) (`forall r8,  imp (object_HIDDEN_1 r8) (imp (=_HIDDEN_1 ((pair_TARSKI_4 r2 r3 ) )((pair_TARSKI_4 r7 r8 ) )) (and (=_HIDDEN_1 r2 r7 ) (=_HIDDEN_1 r3 r8 ))))))) ≔ 
begin
  abort;

// Definition

// Functor
symbol '1_XTUPLE_0_1 : U → U ;

// SimplePredicativeDefiniens


// Permissive definition

symbol '1_XTUPLE_0_1-def (v20:U) ≔ imp (object_HIDDEN_1 v20) (imp ((pair_XTUPLE_0_1 v20 )) (`forall r7,  imp (object_HIDDEN_1 r7) (`forall r8,  imp (object_HIDDEN_1 r8) (imp (=_HIDDEN_1 v20 ((pair_TARSKI_4 r7 r8 ) )) (=_HIDDEN_1 (('1_XTUPLE_0_1 v20 ) )r7 )))));

// Type Specification

opaque symbol TS_110_8 : Prf (`forall v20, imp (object_HIDDEN_1 v20) (object_HIDDEN_1 ('1_XTUPLE_0_1 v20 ))) ≔ 
begin
  abort;

// Definition

// Functor
symbol '2_XTUPLE_0_2 : U → U ;

// SimplePredicativeDefiniens


// Permissive definition

symbol '2_XTUPLE_0_2-def (v20:U) ≔ imp (object_HIDDEN_1 v20) (imp ((pair_XTUPLE_0_1 v20 )) (`forall r7,  imp (object_HIDDEN_1 r7) (`forall r8,  imp (object_HIDDEN_1 r8) (imp (=_HIDDEN_1 v20 ((pair_TARSKI_4 r7 r8 ) )) (=_HIDDEN_1 (('2_XTUPLE_0_2 v20 ) )r8 )))));

// Type Specification

opaque symbol TS_129_8 : Prf (`forall v20, imp (object_HIDDEN_1 v20) (object_HIDDEN_1 ('2_XTUPLE_0_2 v20 ))) ≔ 
begin
  abort;

// Reduction

opaque symbol Red_152_10 (r2:U) (r3:U)  : Prf (imp (and (object_HIDDEN_1 r2) (object_HIDDEN_1 r3)) (=_HIDDEN_1 ('1_XTUPLE_0_1 (pair_TARSKI_4 r2 r3 ) ) r2)) ≔ 
begin
  abort;

// Reduction

opaque symbol Red_154_10 (r2:U) (r3:U)  : Prf (imp (and (object_HIDDEN_1 r2) (object_HIDDEN_1 r3)) (=_HIDDEN_1 ('2_XTUPLE_0_2 (pair_TARSKI_4 r2 r3 ) ) r3)) ≔ 
begin
  abort;

// Cluster

// Existential

opaque symbol Cl_159_11 : Prf (`exists a, and (object_HIDDEN_1 a) ((pair_XTUPLE_0_1 a ))) ≔ 
begin
  abort;

// Reduction

opaque symbol Red_170_10 (v29:U)  : Prf (imp (and (object_HIDDEN_1 v29) ((pair_XTUPLE_0_1 v29 ))) (=_HIDDEN_1 (pair_TARSKI_4 ('1_XTUPLE_0_1 v29 ) ('2_XTUPLE_0_2 v29 ) ) v29)) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_2 : Prf (`forall b32, `forall b33,  imp (and (and (object_HIDDEN_1 b32) ((pair_XTUPLE_0_1 b32 ))) (and (object_HIDDEN_1 b33) ((pair_XTUPLE_0_1 b33 )))) (imp (and (=_HIDDEN_1 (('1_XTUPLE_0_1 b32 ) )(('1_XTUPLE_0_1 b33 ) )) (=_HIDDEN_1 (('2_XTUPLE_0_2 b32 ) )(('2_XTUPLE_0_2 b33 ) ))) (=_HIDDEN_1 b32 b33 ))) ≔ 
begin
  abort;

// Definition

// Functor

// SimpleEquationalDefiniens

symbol triple_XTUPLE_0_3 (v38:U) (v39:U) (v40:U) ≔ imp (and (and (object_HIDDEN_1 v38) (object_HIDDEN_1 v39)) (object_HIDDEN_1 v40)) ((pair_TARSKI_4 (pair_TARSKI_4 v38 v39 ) v40 ));

// Type Specification

opaque symbol TS_193_8 : Prf (`forall v38, imp (object_HIDDEN_1 v38) (`forall v39, imp (object_HIDDEN_1 v39) (`forall v40, imp (object_HIDDEN_1 v40) (object_HIDDEN_1 (triple_XTUPLE_0_3 v38 v39 v40 ))))) ≔ 
begin
  abort;

// Definition

// Attribute
symbol triple_XTUPLE_0_2 : U → U ;

// SimplePredicativeDefiniens

symbol triple_XTUPLE_0_2-def (r1:U) ≔ imp (object_HIDDEN_1 r1) (`exists r2,  `exists r3,  `exists r4,  and (and (and (object_HIDDEN_1 r2) (object_HIDDEN_1 r3)) (object_HIDDEN_1 r4)) (=_HIDDEN_1 r1 ((triple_XTUPLE_0_3 r2 r3 r4 ) )));

// Cluster

// Functorial

opaque symbol Cl_205_11 (r2:U) (r3:U) (r4:U)  : Prf (imp (and (and (object_HIDDEN_1 r2) (object_HIDDEN_1 r3)) (object_HIDDEN_1 r4)) ((triple_XTUPLE_0_2 ((triple_XTUPLE_0_3 r2 r3 r4 )) ))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_3 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r7,  imp (object_HIDDEN_1 r7) (`forall r8,  imp (object_HIDDEN_1 r8) (`forall r9,  imp (object_HIDDEN_1 r9) (imp (=_HIDDEN_1 ((triple_XTUPLE_0_3 r2 r3 r4 ) )((triple_XTUPLE_0_3 r7 r8 r9 ) )) (and (and (=_HIDDEN_1 r2 r7 ) (=_HIDDEN_1 r3 r8 )) (=_HIDDEN_1 r4 r9 ))))))))) ≔ 
begin
  abort;

// Cluster

// Existential

opaque symbol Cl_221_11 : Prf (`exists a, and (object_HIDDEN_1 a) ((triple_XTUPLE_0_2 a ))) ≔ 
begin
  abort;

// Cluster

// Conditional

opaque symbol Cl_228_11 : Prf (`forall a, imp (object_HIDDEN_1 a) (imp ((triple_XTUPLE_0_2 a ) )(pair_XTUPLE_0_1 a ))) ≔ 
begin
  abort;

// Definition

// Functor

// SimpleEquationalDefiniens

symbol '1_3_XTUPLE_0_4 (v54:U) ≔ imp (object_HIDDEN_1 v54) (('1_XTUPLE_0_1 ('1_XTUPLE_0_1 v54 ) ));

// Type Specification

opaque symbol TS_234_8 : Prf (`forall v54, imp (object_HIDDEN_1 v54) (object_HIDDEN_1 ('1_3_XTUPLE_0_4 v54 ))) ≔ 
begin
  abort;

// Definition

// Functor

// SimpleEquationalDefiniens

symbol '2_3_XTUPLE_0_5 (v54:U) ≔ imp (object_HIDDEN_1 v54) (('2_XTUPLE_0_2 ('1_XTUPLE_0_1 v54 ) ));

// Type Specification

opaque symbol TS_236_8 : Prf (`forall v54, imp (object_HIDDEN_1 v54) (object_HIDDEN_1 ('2_3_XTUPLE_0_5 v54 ))) ≔ 
begin
  abort;

// Functor Synonym
symbol '3_3_XTUPLE_0_6 (v55:U) ≔ imp (object_HIDDEN_1 v55) ('2_XTUPLE_0_2 v55);

// Reduction

opaque symbol Red_247_10 (r2:U) (r3:U) (r4:U)  : Prf (imp (and (and (object_HIDDEN_1 r2) (object_HIDDEN_1 r3)) (object_HIDDEN_1 r4)) (=_HIDDEN_1 ('1_3_XTUPLE_0_4 (triple_XTUPLE_0_3 r2 r3 r4 ) ) r2)) ≔ 
begin
  abort;

// Reduction

opaque symbol Red_249_10 (r2:U) (r3:U) (r4:U)  : Prf (imp (and (and (object_HIDDEN_1 r2) (object_HIDDEN_1 r3)) (object_HIDDEN_1 r4)) (=_HIDDEN_1 ('2_3_XTUPLE_0_5 (triple_XTUPLE_0_3 r2 r3 r4 ) ) r3)) ≔ 
begin
  abort;

// Reduction

opaque symbol Red_251_10 (r2:U) (r3:U) (r4:U)  : Prf (imp (and (and (object_HIDDEN_1 r2) (object_HIDDEN_1 r3)) (object_HIDDEN_1 r4)) (=_HIDDEN_1 ('3_3_XTUPLE_0_6 (triple_XTUPLE_0_3 r2 r3 r4 ) ) r4)) ≔ 
begin
  abort;

// Reduction

opaque symbol Red_257_10 (v59:U)  : Prf (imp (and (object_HIDDEN_1 v59) ((triple_XTUPLE_0_2 v59 ))) (=_HIDDEN_1 (triple_XTUPLE_0_3 ('1_3_XTUPLE_0_4 v59 ) ('2_3_XTUPLE_0_5 v59 ) ('3_3_XTUPLE_0_6 v59 ) ) v59)) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_4 : Prf (`forall b63, `forall b64,  imp (and (and (object_HIDDEN_1 b63) ((triple_XTUPLE_0_2 b63 ))) (and (object_HIDDEN_1 b64) ((triple_XTUPLE_0_2 b64 )))) (imp (and (and (=_HIDDEN_1 (('1_3_XTUPLE_0_4 b63 ) )(('1_3_XTUPLE_0_4 b64 ) )) (=_HIDDEN_1 (('2_3_XTUPLE_0_5 b63 ) )(('2_3_XTUPLE_0_5 b64 ) ))) (=_HIDDEN_1 (('3_3_XTUPLE_0_6 b63 ) )(('3_3_XTUPLE_0_6 b64 ) ))) (=_HIDDEN_1 b63 b64 ))) ≔ 
begin
  abort;

// Definition

// Functor

// SimpleEquationalDefiniens

symbol quadruple_XTUPLE_0_7 (v69:U) (v70:U) (v71:U) (v72:U) ≔ imp (and (and (and (object_HIDDEN_1 v69) (object_HIDDEN_1 v70)) (object_HIDDEN_1 v71)) (object_HIDDEN_1 v72)) ((pair_TARSKI_4 (triple_XTUPLE_0_3 v69 v70 v71 ) v72 ));

// Type Specification

opaque symbol TS_281_8 : Prf (`forall v69, imp (object_HIDDEN_1 v69) (`forall v70, imp (object_HIDDEN_1 v70) (`forall v71, imp (object_HIDDEN_1 v71) (`forall v72, imp (object_HIDDEN_1 v72) (object_HIDDEN_1 (quadruple_XTUPLE_0_7 v69 v70 v71 v72 )))))) ≔ 
begin
  abort;

// Definition

// Attribute
symbol quadruple_XTUPLE_0_3 : U → U ;

// SimplePredicativeDefiniens

symbol quadruple_XTUPLE_0_3-def (r1:U) ≔ imp (object_HIDDEN_1 r1) (`exists r2,  `exists r3,  `exists r4,  `exists r5,  and (and (and (and (object_HIDDEN_1 r2) (object_HIDDEN_1 r3)) (object_HIDDEN_1 r4)) (object_HIDDEN_1 r5)) (=_HIDDEN_1 r1 ((quadruple_XTUPLE_0_7 r2 r3 r4 r5 ) )));

// Cluster

// Functorial

opaque symbol Cl_293_11 (r2:U) (r3:U) (r4:U) (r5:U)  : Prf (imp (and (and (and (object_HIDDEN_1 r2) (object_HIDDEN_1 r3)) (object_HIDDEN_1 r4)) (object_HIDDEN_1 r5)) ((quadruple_XTUPLE_0_3 ((quadruple_XTUPLE_0_7 r2 r3 r4 r5 )) ))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_5 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r7,  imp (object_HIDDEN_1 r7) (`forall r8,  imp (object_HIDDEN_1 r8) (`forall r9,  imp (object_HIDDEN_1 r9) (`forall r10,  imp (object_HIDDEN_1 r10) (imp (=_HIDDEN_1 ((quadruple_XTUPLE_0_7 r2 r3 r4 r5 ) )((quadruple_XTUPLE_0_7 r7 r8 r9 r10 ) )) (and (and (and (=_HIDDEN_1 r2 r7 ) (=_HIDDEN_1 r3 r8 )) (=_HIDDEN_1 r4 r9 )) (=_HIDDEN_1 r5 r10 ))))))))))) ≔ 
begin
  abort;

// Cluster

// Existential

opaque symbol Cl_309_11 : Prf (`exists a, and (object_HIDDEN_1 a) ((quadruple_XTUPLE_0_3 a ))) ≔ 
begin
  abort;

// Cluster

// Conditional

opaque symbol Cl_316_11 : Prf (`forall a, imp (object_HIDDEN_1 a) (imp ((quadruple_XTUPLE_0_3 a ) )(triple_XTUPLE_0_2 a ))) ≔ 
begin
  abort;

// Definition

// Functor

// SimpleEquationalDefiniens

symbol '1_4_XTUPLE_0_8 (v95:U) ≔ imp (object_HIDDEN_1 v95) (('1_XTUPLE_0_1 ('1_XTUPLE_0_1 ('1_XTUPLE_0_1 v95 ) ) ));

// Type Specification

opaque symbol TS_330_8 : Prf (`forall v95, imp (object_HIDDEN_1 v95) (object_HIDDEN_1 ('1_4_XTUPLE_0_8 v95 ))) ≔ 
begin
  abort;

// Definition

// Functor

// SimpleEquationalDefiniens

symbol '2_4_XTUPLE_0_9 (v95:U) ≔ imp (object_HIDDEN_1 v95) (('2_XTUPLE_0_2 ('1_XTUPLE_0_1 ('1_XTUPLE_0_1 v95 ) ) ));

// Type Specification

opaque symbol TS_332_8 : Prf (`forall v95, imp (object_HIDDEN_1 v95) (object_HIDDEN_1 ('2_4_XTUPLE_0_9 v95 ))) ≔ 
begin
  abort;

// Functor Synonym
symbol '3_4_XTUPLE_0_10 (v96:U) ≔ imp (object_HIDDEN_1 v96) ('2_3_XTUPLE_0_5 v96);

// Functor Synonym
symbol '4_4_XTUPLE_0_11 (v96:U) ≔ imp (object_HIDDEN_1 v96) ('2_XTUPLE_0_2 v96);

// Reduction

opaque symbol Red_344_10 (r2:U) (r3:U) (r4:U) (r5:U)  : Prf (imp (and (and (and (object_HIDDEN_1 r2) (object_HIDDEN_1 r3)) (object_HIDDEN_1 r4)) (object_HIDDEN_1 r5)) (=_HIDDEN_1 ('1_4_XTUPLE_0_8 (quadruple_XTUPLE_0_7 r2 r3 r4 r5 ) ) r2)) ≔ 
begin
  abort;

// Reduction

opaque symbol Red_346_10 (r2:U) (r3:U) (r4:U) (r5:U)  : Prf (imp (and (and (and (object_HIDDEN_1 r2) (object_HIDDEN_1 r3)) (object_HIDDEN_1 r4)) (object_HIDDEN_1 r5)) (=_HIDDEN_1 ('2_4_XTUPLE_0_9 (quadruple_XTUPLE_0_7 r2 r3 r4 r5 ) ) r3)) ≔ 
begin
  abort;

// Reduction

opaque symbol Red_348_10 (r2:U) (r3:U) (r4:U) (r5:U)  : Prf (imp (and (and (and (object_HIDDEN_1 r2) (object_HIDDEN_1 r3)) (object_HIDDEN_1 r4)) (object_HIDDEN_1 r5)) (=_HIDDEN_1 ('3_4_XTUPLE_0_10 (quadruple_XTUPLE_0_7 r2 r3 r4 r5 ) ) r4)) ≔ 
begin
  abort;

// Reduction

opaque symbol Red_350_10 (r2:U) (r3:U) (r4:U) (r5:U)  : Prf (imp (and (and (and (object_HIDDEN_1 r2) (object_HIDDEN_1 r3)) (object_HIDDEN_1 r4)) (object_HIDDEN_1 r5)) (=_HIDDEN_1 ('4_4_XTUPLE_0_11 (quadruple_XTUPLE_0_7 r2 r3 r4 r5 ) ) r5)) ≔ 
begin
  abort;

// Reduction

opaque symbol Red_356_10 (v101:U)  : Prf (imp (and (object_HIDDEN_1 v101) ((quadruple_XTUPLE_0_3 v101 ))) (=_HIDDEN_1 (quadruple_XTUPLE_0_7 ('1_4_XTUPLE_0_8 v101 ) ('2_4_XTUPLE_0_9 v101 ) ('3_4_XTUPLE_0_10 v101 ) ('4_4_XTUPLE_0_11 v101 ) ) v101)) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_6 : Prf (`forall r1,  imp (object_HIDDEN_1 r1) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r16,  imp (set_HIDDEN_2 r16) (imp (∈_HIDDEN_3 ((pair_TARSKI_4 r1 r6 ) )r16 ) (∈_HIDDEN_3 r1 ((union_TARSKI_3 (union_TARSKI_3 r16 ) ) )))))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_7 : Prf (`forall r1,  imp (object_HIDDEN_1 r1) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r16,  imp (set_HIDDEN_2 r16) (imp (∈_HIDDEN_3 ((pair_TARSKI_4 r1 r6 ) )r16 ) (∈_HIDDEN_3 r6 ((union_TARSKI_3 (union_TARSKI_3 r16 ) ) )))))) ≔ 
begin
  abort;

// Definition

// Functor
symbol proj1_XTUPLE_0_12 : U → U ;

// SimplePredicativeDefiniens

symbol proj1_XTUPLE_0_12-def (v112:U) ≔ imp (set_HIDDEN_2 v112) (`forall r1,  imp (object_HIDDEN_1 r1) (iff (∈_HIDDEN_3 r1 ((proj1_XTUPLE_0_12 v112 ) )) (`exists r6,  and (object_HIDDEN_1 r6) (∈_HIDDEN_3 ((pair_TARSKI_4 r1 r6 ) )v112 ))));

// Type Specification

opaque symbol TS_396_8 : Prf (`forall v112, imp (set_HIDDEN_2 v112) (set_HIDDEN_2 (proj1_XTUPLE_0_12 v112 ))) ≔ 
begin
  abort;

// Definition

// Functor
symbol proj2_XTUPLE_0_13 : U → U ;

// SimplePredicativeDefiniens

symbol proj2_XTUPLE_0_13-def (v112:U) ≔ imp (set_HIDDEN_2 v112) (`forall r1,  imp (object_HIDDEN_1 r1) (iff (∈_HIDDEN_3 r1 ((proj2_XTUPLE_0_13 v112 ) )) (`exists r6,  and (object_HIDDEN_1 r6) (∈_HIDDEN_3 ((pair_TARSKI_4 r6 r1 ) )v112 ))));

// Type Specification

opaque symbol TS_428_8 : Prf (`forall v112, imp (set_HIDDEN_2 v112) (set_HIDDEN_2 (proj2_XTUPLE_0_13 v112 ))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_8 : Prf (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r21,  imp (set_HIDDEN_2 r21) (imp (⊆_TARSKI_1 r16 r21 ) (⊆_TARSKI_1 ((proj1_XTUPLE_0_12 r16 ) )((proj1_XTUPLE_0_12 r21 ) ))))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_9 : Prf (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r21,  imp (set_HIDDEN_2 r21) (imp (⊆_TARSKI_1 r16 r21 ) (⊆_TARSKI_1 ((proj2_XTUPLE_0_13 r16 ) )((proj2_XTUPLE_0_13 r21 ) ))))) ≔ 
begin
  abort;

// Definition

// Functor

// SimpleEquationalDefiniens

symbol proj1_3_XTUPLE_0_14 (v153:U) ≔ imp (set_HIDDEN_2 v153) ((proj1_XTUPLE_0_12 (proj1_XTUPLE_0_12 v153 ) ));

// Type Specification

opaque symbol TS_496_8 : Prf (`forall v153, imp (set_HIDDEN_2 v153) (set_HIDDEN_2 (proj1_3_XTUPLE_0_14 v153 ))) ≔ 
begin
  abort;

// Definition

// Functor

// SimpleEquationalDefiniens

symbol proj2_3_XTUPLE_0_15 (v153:U) ≔ imp (set_HIDDEN_2 v153) ((proj2_XTUPLE_0_13 (proj1_XTUPLE_0_12 v153 ) ));

// Type Specification

opaque symbol TS_498_8 : Prf (`forall v153, imp (set_HIDDEN_2 v153) (set_HIDDEN_2 (proj2_3_XTUPLE_0_15 v153 ))) ≔ 
begin
  abort;

// Functor Synonym
symbol proj3_3_XTUPLE_0_16 (v154:U) ≔ imp (set_HIDDEN_2 v154) (proj2_XTUPLE_0_13 v154);

opaque symbol Th_XTUPLE_0_10 : Prf (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r21,  imp (set_HIDDEN_2 r21) (imp (⊆_TARSKI_1 r16 r21 ) (⊆_TARSKI_1 ((proj1_3_XTUPLE_0_14 r16 ) )((proj1_3_XTUPLE_0_14 r21 ) ))))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_11 : Prf (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r21,  imp (set_HIDDEN_2 r21) (imp (⊆_TARSKI_1 r16 r21 ) (⊆_TARSKI_1 ((proj2_3_XTUPLE_0_15 r16 ) )((proj2_3_XTUPLE_0_15 r21 ) ))))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_12 : Prf (`forall r1,  imp (object_HIDDEN_1 r1) (`forall r16,  imp (set_HIDDEN_2 r16) (imp (∈_HIDDEN_3 r1 ((proj1_3_XTUPLE_0_14 r16 ) )) (`exists r6,  `exists r11,  and (and (object_HIDDEN_1 r6) (object_HIDDEN_1 r11)) (∈_HIDDEN_3 ((triple_XTUPLE_0_3 r1 r6 r11 ) )r16 ))))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_13 : Prf (`forall r1,  imp (object_HIDDEN_1 r1) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r11,  imp (object_HIDDEN_1 r11) (`forall r16,  imp (set_HIDDEN_2 r16) (imp (∈_HIDDEN_3 ((triple_XTUPLE_0_3 r1 r6 r11 ) )r16 ) (∈_HIDDEN_3 r1 ((proj1_3_XTUPLE_0_14 r16 ) ))))))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_14 : Prf (`forall r1,  imp (object_HIDDEN_1 r1) (`forall r16,  imp (set_HIDDEN_2 r16) (imp (∈_HIDDEN_3 r1 ((proj2_3_XTUPLE_0_15 r16 ) )) (`exists r6,  `exists r11,  and (and (object_HIDDEN_1 r6) (object_HIDDEN_1 r11)) (∈_HIDDEN_3 ((triple_XTUPLE_0_3 r6 r1 r11 ) )r16 ))))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_15 : Prf (`forall r1,  imp (object_HIDDEN_1 r1) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r11,  imp (object_HIDDEN_1 r11) (`forall r16,  imp (set_HIDDEN_2 r16) (imp (∈_HIDDEN_3 ((triple_XTUPLE_0_3 r1 r6 r11 ) )r16 ) (∈_HIDDEN_3 r6 ((proj2_3_XTUPLE_0_15 r16 ) ))))))) ≔ 
begin
  abort;

// Definition

// Functor

// SimpleEquationalDefiniens

symbol proj1_4_XTUPLE_0_17 (v179:U) ≔ imp (set_HIDDEN_2 v179) ((proj1_XTUPLE_0_12 (proj1_3_XTUPLE_0_14 v179 ) ));

// Type Specification

opaque symbol TS_583_8 : Prf (`forall v179, imp (set_HIDDEN_2 v179) (set_HIDDEN_2 (proj1_4_XTUPLE_0_17 v179 ))) ≔ 
begin
  abort;

// Definition

// Functor

// SimpleEquationalDefiniens

symbol proj2_4_XTUPLE_0_18 (v179:U) ≔ imp (set_HIDDEN_2 v179) ((proj2_XTUPLE_0_13 (proj1_3_XTUPLE_0_14 v179 ) ));

// Type Specification

opaque symbol TS_585_8 : Prf (`forall v179, imp (set_HIDDEN_2 v179) (set_HIDDEN_2 (proj2_4_XTUPLE_0_18 v179 ))) ≔ 
begin
  abort;

// Functor Synonym
symbol proj3_4_XTUPLE_0_19 (v180:U) ≔ imp (set_HIDDEN_2 v180) (proj2_3_XTUPLE_0_15 v180);

// Functor Synonym
symbol proj4_4_XTUPLE_0_20 (v180:U) ≔ imp (set_HIDDEN_2 v180) (proj2_XTUPLE_0_13 v180);

opaque symbol Th_XTUPLE_0_16 : Prf (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r21,  imp (set_HIDDEN_2 r21) (imp (⊆_TARSKI_1 r16 r21 ) (⊆_TARSKI_1 ((proj1_4_XTUPLE_0_17 r16 ) )((proj1_4_XTUPLE_0_17 r21 ) ))))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_17 : Prf (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r21,  imp (set_HIDDEN_2 r21) (imp (⊆_TARSKI_1 r16 r21 ) (⊆_TARSKI_1 ((proj2_4_XTUPLE_0_18 r16 ) )((proj2_4_XTUPLE_0_18 r21 ) ))))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_18 : Prf (`forall r1,  imp (object_HIDDEN_1 r1) (`forall r16,  imp (set_HIDDEN_2 r16) (imp (∈_HIDDEN_3 r1 ((proj1_4_XTUPLE_0_17 r16 ) )) (`exists r2,  `exists r3,  `exists r4,  and (and (and (object_HIDDEN_1 r2) (object_HIDDEN_1 r3)) (object_HIDDEN_1 r4)) (∈_HIDDEN_3 ((quadruple_XTUPLE_0_7 r1 r2 r3 r4 ) )r16 ))))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_19 : Prf (`forall r1,  imp (object_HIDDEN_1 r1) (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r16,  imp (set_HIDDEN_2 r16) (imp (∈_HIDDEN_3 ((quadruple_XTUPLE_0_7 r1 r2 r3 r4 ) )r16 ) (∈_HIDDEN_3 r1 ((proj1_4_XTUPLE_0_17 r16 ) )))))))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_20 : Prf (`forall r1,  imp (object_HIDDEN_1 r1) (`forall r16,  imp (set_HIDDEN_2 r16) (imp (∈_HIDDEN_3 r1 ((proj2_4_XTUPLE_0_18 r16 ) )) (`exists r2,  `exists r3,  `exists r4,  and (and (and (object_HIDDEN_1 r2) (object_HIDDEN_1 r3)) (object_HIDDEN_1 r4)) (∈_HIDDEN_3 ((quadruple_XTUPLE_0_7 r2 r1 r3 r4 ) )r16 ))))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_21 : Prf (`forall r1,  imp (object_HIDDEN_1 r1) (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r16,  imp (set_HIDDEN_2 r16) (imp (∈_HIDDEN_3 ((quadruple_XTUPLE_0_7 r2 r1 r3 r4 ) )r16 ) (∈_HIDDEN_3 r1 ((proj2_4_XTUPLE_0_18 r16 ) )))))))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_22 : Prf (`forall b211, `forall b212,  imp (and (and (object_HIDDEN_1 b211) ((quadruple_XTUPLE_0_3 b211 ))) (and (object_HIDDEN_1 b212) ((quadruple_XTUPLE_0_3 b212 )))) (imp (and (and (and (=_HIDDEN_1 (('1_4_XTUPLE_0_8 b211 ) )(('1_4_XTUPLE_0_8 b212 ) )) (=_HIDDEN_1 (('2_4_XTUPLE_0_9 b211 ) )(('2_4_XTUPLE_0_9 b212 ) ))) (=_HIDDEN_1 (('3_4_XTUPLE_0_10 b211 ) )(('3_4_XTUPLE_0_10 b212 ) ))) (=_HIDDEN_1 (('4_4_XTUPLE_0_11 b211 ) )(('4_4_XTUPLE_0_11 b212 ) ))) (=_HIDDEN_1 b211 b212 ))) ≔ 
begin
  abort;

// Cluster

// Functorial

opaque symbol Cl_691_11 (v217:U)  : Prf (imp (and (set_HIDDEN_2 v217) ((empty_XBOOLE_0_1 v217 ))) ((empty_XBOOLE_0_1 ((proj1_XTUPLE_0_12 v217 )) ))) ≔ 
begin
  abort;

// Cluster

// Functorial

opaque symbol Cl_707_11 (v220:U)  : Prf (imp (and (set_HIDDEN_2 v220) ((empty_XBOOLE_0_1 v220 ))) ((empty_XBOOLE_0_1 ((proj2_XTUPLE_0_13 v220 )) ))) ≔ 
begin
  abort;

// Cluster

// Functorial

opaque symbol Cl_723_11 (v223:U)  : Prf (imp (and (set_HIDDEN_2 v223) ((empty_XBOOLE_0_1 v223 ))) ((empty_XBOOLE_0_1 ((proj1_3_XTUPLE_0_14 v223 )) ))) ≔ 
begin
  abort;

// Cluster

// Functorial

opaque symbol Cl_729_11 (v224:U)  : Prf (imp (and (set_HIDDEN_2 v224) ((empty_XBOOLE_0_1 v224 ))) ((empty_XBOOLE_0_1 ((proj2_3_XTUPLE_0_15 v224 )) ))) ≔ 
begin
  abort;

// Cluster

// Functorial

opaque symbol Cl_735_11 (v225:U)  : Prf (imp (and (set_HIDDEN_2 v225) ((empty_XBOOLE_0_1 v225 ))) ((empty_XBOOLE_0_1 ((proj1_4_XTUPLE_0_17 v225 )) ))) ≔ 
begin
  abort;

// Cluster

// Functorial

opaque symbol Cl_741_11 (v226:U)  : Prf (imp (and (set_HIDDEN_2 v226) ((empty_XBOOLE_0_1 v226 ))) ((empty_XBOOLE_0_1 ((proj2_4_XTUPLE_0_18 v226 )) ))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_23 : Prf (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r21,  imp (set_HIDDEN_2 r21) (=_XBOOLE_0_4 ((proj1_XTUPLE_0_12 (∪_XBOOLE_0_2 r16 r21 ) ) )((∪_XBOOLE_0_2 (proj1_XTUPLE_0_12 r16 ) (proj1_XTUPLE_0_12 r21 ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_24 : Prf (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r21,  imp (set_HIDDEN_2 r21) (⊆_TARSKI_1 ((proj1_XTUPLE_0_12 (∩_XBOOLE_0_3 r16 r21 ) ) )((∩_XBOOLE_0_3 (proj1_XTUPLE_0_12 r16 ) (proj1_XTUPLE_0_12 r21 ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_25 : Prf (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r21,  imp (set_HIDDEN_2 r21) (⊆_TARSKI_1 ((\_XBOOLE_0_4 (proj1_XTUPLE_0_12 r16 ) (proj1_XTUPLE_0_12 r21 ) ) )((proj1_XTUPLE_0_12 (\_XBOOLE_0_4 r16 r21 ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_26 : Prf (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r21,  imp (set_HIDDEN_2 r21) (⊆_TARSKI_1 ((⊕_XBOOLE_0_5 (proj1_XTUPLE_0_12 r16 ) (proj1_XTUPLE_0_12 r21 ) ) )((proj1_XTUPLE_0_12 (⊕_XBOOLE_0_5 r16 r21 ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_27 : Prf (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r21,  imp (set_HIDDEN_2 r21) (=_XBOOLE_0_4 ((proj2_XTUPLE_0_13 (∪_XBOOLE_0_2 r16 r21 ) ) )((∪_XBOOLE_0_2 (proj2_XTUPLE_0_13 r16 ) (proj2_XTUPLE_0_13 r21 ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_28 : Prf (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r21,  imp (set_HIDDEN_2 r21) (⊆_TARSKI_1 ((proj2_XTUPLE_0_13 (∩_XBOOLE_0_3 r16 r21 ) ) )((∩_XBOOLE_0_3 (proj2_XTUPLE_0_13 r16 ) (proj2_XTUPLE_0_13 r21 ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_29 : Prf (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r21,  imp (set_HIDDEN_2 r21) (⊆_TARSKI_1 ((\_XBOOLE_0_4 (proj2_XTUPLE_0_13 r16 ) (proj2_XTUPLE_0_13 r21 ) ) )((proj2_XTUPLE_0_13 (\_XBOOLE_0_4 r16 r21 ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_30 : Prf (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r21,  imp (set_HIDDEN_2 r21) (⊆_TARSKI_1 ((⊕_XBOOLE_0_5 (proj2_XTUPLE_0_13 r16 ) (proj2_XTUPLE_0_13 r21 ) ) )((proj2_XTUPLE_0_13 (⊕_XBOOLE_0_5 r16 r21 ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_31 : Prf (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r21,  imp (set_HIDDEN_2 r21) (=_XBOOLE_0_4 ((proj1_3_XTUPLE_0_14 (∪_XBOOLE_0_2 r16 r21 ) ) )((∪_XBOOLE_0_2 (proj1_3_XTUPLE_0_14 r16 ) (proj1_3_XTUPLE_0_14 r21 ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_32 : Prf (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r21,  imp (set_HIDDEN_2 r21) (⊆_TARSKI_1 ((proj1_3_XTUPLE_0_14 (∩_XBOOLE_0_3 r16 r21 ) ) )((∩_XBOOLE_0_3 (proj1_3_XTUPLE_0_14 r16 ) (proj1_3_XTUPLE_0_14 r21 ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_33 : Prf (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r21,  imp (set_HIDDEN_2 r21) (⊆_TARSKI_1 ((\_XBOOLE_0_4 (proj1_3_XTUPLE_0_14 r16 ) (proj1_3_XTUPLE_0_14 r21 ) ) )((proj1_3_XTUPLE_0_14 (\_XBOOLE_0_4 r16 r21 ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_34 : Prf (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r21,  imp (set_HIDDEN_2 r21) (⊆_TARSKI_1 ((⊕_XBOOLE_0_5 (proj1_3_XTUPLE_0_14 r16 ) (proj1_3_XTUPLE_0_14 r21 ) ) )((proj1_3_XTUPLE_0_14 (⊕_XBOOLE_0_5 r16 r21 ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_35 : Prf (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r21,  imp (set_HIDDEN_2 r21) (=_XBOOLE_0_4 ((proj2_3_XTUPLE_0_15 (∪_XBOOLE_0_2 r16 r21 ) ) )((∪_XBOOLE_0_2 (proj2_3_XTUPLE_0_15 r16 ) (proj2_3_XTUPLE_0_15 r21 ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_36 : Prf (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r21,  imp (set_HIDDEN_2 r21) (⊆_TARSKI_1 ((proj2_3_XTUPLE_0_15 (∩_XBOOLE_0_3 r16 r21 ) ) )((∩_XBOOLE_0_3 (proj2_3_XTUPLE_0_15 r16 ) (proj2_3_XTUPLE_0_15 r21 ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_37 : Prf (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r21,  imp (set_HIDDEN_2 r21) (⊆_TARSKI_1 ((\_XBOOLE_0_4 (proj2_3_XTUPLE_0_15 r16 ) (proj2_3_XTUPLE_0_15 r21 ) ) )((proj2_3_XTUPLE_0_15 (\_XBOOLE_0_4 r16 r21 ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_38 : Prf (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r21,  imp (set_HIDDEN_2 r21) (⊆_TARSKI_1 ((⊕_XBOOLE_0_5 (proj2_3_XTUPLE_0_15 r16 ) (proj2_3_XTUPLE_0_15 r21 ) ) )((proj2_3_XTUPLE_0_15 (⊕_XBOOLE_0_5 r16 r21 ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_39 : Prf (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r21,  imp (set_HIDDEN_2 r21) (=_XBOOLE_0_4 ((proj1_4_XTUPLE_0_17 (∪_XBOOLE_0_2 r16 r21 ) ) )((∪_XBOOLE_0_2 (proj1_4_XTUPLE_0_17 r16 ) (proj1_4_XTUPLE_0_17 r21 ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_40 : Prf (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r21,  imp (set_HIDDEN_2 r21) (⊆_TARSKI_1 ((proj1_4_XTUPLE_0_17 (∩_XBOOLE_0_3 r16 r21 ) ) )((∩_XBOOLE_0_3 (proj1_4_XTUPLE_0_17 r16 ) (proj1_4_XTUPLE_0_17 r21 ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_41 : Prf (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r21,  imp (set_HIDDEN_2 r21) (⊆_TARSKI_1 ((\_XBOOLE_0_4 (proj1_4_XTUPLE_0_17 r16 ) (proj1_4_XTUPLE_0_17 r21 ) ) )((proj1_4_XTUPLE_0_17 (\_XBOOLE_0_4 r16 r21 ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_42 : Prf (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r21,  imp (set_HIDDEN_2 r21) (⊆_TARSKI_1 ((⊕_XBOOLE_0_5 (proj1_4_XTUPLE_0_17 r16 ) (proj1_4_XTUPLE_0_17 r21 ) ) )((proj1_4_XTUPLE_0_17 (⊕_XBOOLE_0_5 r16 r21 ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_43 : Prf (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r21,  imp (set_HIDDEN_2 r21) (=_XBOOLE_0_4 ((proj2_4_XTUPLE_0_18 (∪_XBOOLE_0_2 r16 r21 ) ) )((∪_XBOOLE_0_2 (proj2_4_XTUPLE_0_18 r16 ) (proj2_4_XTUPLE_0_18 r21 ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_44 : Prf (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r21,  imp (set_HIDDEN_2 r21) (⊆_TARSKI_1 ((proj2_4_XTUPLE_0_18 (∩_XBOOLE_0_3 r16 r21 ) ) )((∩_XBOOLE_0_3 (proj2_4_XTUPLE_0_18 r16 ) (proj2_4_XTUPLE_0_18 r21 ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_45 : Prf (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r21,  imp (set_HIDDEN_2 r21) (⊆_TARSKI_1 ((\_XBOOLE_0_4 (proj2_4_XTUPLE_0_18 r16 ) (proj2_4_XTUPLE_0_18 r21 ) ) )((proj2_4_XTUPLE_0_18 (\_XBOOLE_0_4 r16 r21 ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_XTUPLE_0_46 : Prf (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r21,  imp (set_HIDDEN_2 r21) (⊆_TARSKI_1 ((⊕_XBOOLE_0_5 (proj2_4_XTUPLE_0_18 r16 ) (proj2_4_XTUPLE_0_18 r21 ) ) )((proj2_4_XTUPLE_0_18 (⊕_XBOOLE_0_5 r16 r21 ) ) )))) ≔ 
begin
  abort;
