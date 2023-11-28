require open lp.predicatelogic;
require open lp.hidden;
require open lp.tarski;
require open lp.xboole_0;
require open lp.enumset1;

// Definition

// Functor
symbol bool_ZFMISC_1_1 : U → U ;

// SimplePredicativeDefiniens

symbol bool_ZFMISC_1_1-def (r14:U) ≔ imp (set_HIDDEN_2 r14) (`forall r22,  imp (set_HIDDEN_2 r22) (iff (∈_TARSKI_2 r22 ((bool_ZFMISC_1_1 r14 ) )) (⊆_TARSKI_1 r22 r14 )));

// Type Specification

opaque symbol TS_79_8 : Prf (`forall r14, imp (set_HIDDEN_2 r14) (set_HIDDEN_2 (bool_ZFMISC_1_1 r14 ))) ≔ 
begin
  abort;

// Definition

// Functor
symbol Cartesian_ZFMISC_1_2 : U → U → U ;

// SimplePredicativeDefiniens

symbol Cartesian_ZFMISC_1_2-def (r15:U) (r16:U) ≔ imp (and (set_HIDDEN_2 r15) (set_HIDDEN_2 r16)) (`forall r9,  imp (object_HIDDEN_1 r9) (iff (∈_HIDDEN_3 r9 ((Cartesian_ZFMISC_1_2 r15 r16 ) )) (`exists r3,  `exists r6,  and (and (object_HIDDEN_1 r3) (object_HIDDEN_1 r6)) (and (and (∈_HIDDEN_3 r3 r15 ) (∈_HIDDEN_3 r6 r16 )) (=_HIDDEN_1 r9 ((pair_TARSKI_4 r3 r6 ) ))))));

// Type Specification

opaque symbol TS_103_8 : Prf (`forall r15, imp (set_HIDDEN_2 r15) (`forall r16, imp (set_HIDDEN_2 r16) (set_HIDDEN_2 (Cartesian_ZFMISC_1_2 r15 r16 )))) ≔ 
begin
  abort;

// Definition

// Functor

// SimpleEquationalDefiniens

symbol Cartesian_ZFMISC_1_3 (r15:U) (r16:U) (r17:U) ≔ imp (and (and (set_HIDDEN_2 r15) (set_HIDDEN_2 r16)) (set_HIDDEN_2 r17)) ((Cartesian_ZFMISC_1_2 (Cartesian_ZFMISC_1_2 r15 r16 ) r17 ));

// Type Specification

opaque symbol TS_148_8 : Prf (`forall r15, imp (set_HIDDEN_2 r15) (`forall r16, imp (set_HIDDEN_2 r16) (`forall r17, imp (set_HIDDEN_2 r17) (set_HIDDEN_2 (Cartesian_ZFMISC_1_3 r15 r16 r17 ))))) ≔ 
begin
  abort;

// Definition

// Functor

// SimpleEquationalDefiniens

symbol Cartesian_ZFMISC_1_4 (r15:U) (r16:U) (r17:U) (r18:U) ≔ imp (and (and (and (set_HIDDEN_2 r15) (set_HIDDEN_2 r16)) (set_HIDDEN_2 r17)) (set_HIDDEN_2 r18)) ((Cartesian_ZFMISC_1_2 (Cartesian_ZFMISC_1_3 r15 r16 r17 ) r18 ));

// Type Specification

opaque symbol TS_154_8 : Prf (`forall r15, imp (set_HIDDEN_2 r15) (`forall r16, imp (set_HIDDEN_2 r16) (`forall r17, imp (set_HIDDEN_2 r17) (`forall r18, imp (set_HIDDEN_2 r18) (set_HIDDEN_2 (Cartesian_ZFMISC_1_4 r15 r16 r17 r18 )))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_1 : Prf (=_XBOOLE_0_4 ((bool_ZFMISC_1_1 ∅_XBOOLE_0_1  ) )((enum_TARSKI_1 ∅_XBOOLE_0_1  ) )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_2 : Prf (=_XBOOLE_0_4 ((union_TARSKI_3 ∅_XBOOLE_0_1  ) )(∅_XBOOLE_0_1  )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_3 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (imp (⊆_TARSKI_1 ((enum_TARSKI_1 r3 ) )((enum_TARSKI_1 r6 ) )) (=_HIDDEN_1 r3 r6 )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_4 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r7,  imp (object_HIDDEN_1 r7) (`forall r8,  imp (object_HIDDEN_1 r8) (imp (=_XBOOLE_0_4 ((enum_TARSKI_1 r3 ) )((enum_TARSKI_2 r7 r8 ) )) (=_HIDDEN_1 r3 r7 ))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_5 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r7,  imp (object_HIDDEN_1 r7) (`forall r8,  imp (object_HIDDEN_1 r8) (imp (=_XBOOLE_0_4 ((enum_TARSKI_1 r3 ) )((enum_TARSKI_2 r7 r8 ) )) (=_HIDDEN_1 r7 r8 ))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_6 : Prf (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r7,  imp (object_HIDDEN_1 r7) (`forall r8,  imp (object_HIDDEN_1 r8) (imp (=_XBOOLE_0_4 ((enum_TARSKI_2 r4 r5 ) )((enum_TARSKI_2 r7 r8 ) )) (or (=_HIDDEN_1 r4 r7 ) (=_HIDDEN_1 r4 r8 ))))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_7 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (⊆_TARSKI_1 ((enum_TARSKI_1 r3 ) )((enum_TARSKI_2 r3 r6 ) )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_8 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (imp (=_XBOOLE_0_4 ((∪_XBOOLE_0_2 (enum_TARSKI_1 r3 ) (enum_TARSKI_1 r6 ) ) )((enum_TARSKI_1 r3 ) )) (=_HIDDEN_1 r3 r6 )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_9 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (=_XBOOLE_0_4 ((∪_XBOOLE_0_2 (enum_TARSKI_1 r3 ) (enum_TARSKI_2 r3 r6 ) ) )((enum_TARSKI_2 r3 r6 ) )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_10 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (imp (misses_XBOOLE_0_1 ((enum_TARSKI_1 r3 ) )((enum_TARSKI_1 r6 ) )) (≠_HIDDEN_2 r3 r6 )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_11 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (imp (≠_HIDDEN_2 r3 r6 ) (misses_XBOOLE_0_1 ((enum_TARSKI_1 r3 ) )((enum_TARSKI_1 r6 ) ))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_12 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (imp (=_XBOOLE_0_4 ((∩_XBOOLE_0_3 (enum_TARSKI_1 r3 ) (enum_TARSKI_1 r6 ) ) )((enum_TARSKI_1 r3 ) )) (=_HIDDEN_1 r3 r6 )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_13 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (=_XBOOLE_0_4 ((∩_XBOOLE_0_3 (enum_TARSKI_1 r3 ) (enum_TARSKI_2 r3 r6 ) ) )((enum_TARSKI_1 r3 ) )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_14 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (iff (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (enum_TARSKI_1 r3 ) (enum_TARSKI_1 r6 ) ) )((enum_TARSKI_1 r3 ) )) (≠_HIDDEN_2 r3 r6 )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_15 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (imp (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (enum_TARSKI_1 r3 ) (enum_TARSKI_1 r6 ) ) )(∅_XBOOLE_0_1  )) (=_HIDDEN_1 r3 r6 )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_16 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (enum_TARSKI_1 r3 ) (enum_TARSKI_2 r3 r6 ) ) )(∅_XBOOLE_0_1  )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_17 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (imp (≠_HIDDEN_2 r3 r6 ) (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (enum_TARSKI_2 r3 r6 ) (enum_TARSKI_1 r6 ) ) )((enum_TARSKI_1 r3 ) ))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_18 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (imp (⊆_TARSKI_1 ((enum_TARSKI_1 r3 ) )((enum_TARSKI_1 r6 ) )) (=_HIDDEN_1 r3 r6 )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_19 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r9,  imp (object_HIDDEN_1 r9) (imp (⊆_TARSKI_1 ((enum_TARSKI_1 r9 ) )((enum_TARSKI_2 r3 r6 ) )) (or (=_HIDDEN_1 r9 r3 ) (=_HIDDEN_1 r9 r6 )))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_20 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r9,  imp (object_HIDDEN_1 r9) (imp (⊆_TARSKI_1 ((enum_TARSKI_2 r3 r6 ) )((enum_TARSKI_1 r9 ) )) (=_HIDDEN_1 r3 r9 ))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_21 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r9,  imp (object_HIDDEN_1 r9) (imp (⊆_TARSKI_1 ((enum_TARSKI_2 r3 r6 ) )((enum_TARSKI_1 r9 ) )) (=_XBOOLE_0_4 ((enum_TARSKI_2 r3 r6 ) )((enum_TARSKI_1 r9 ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_22 : Prf (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r7,  imp (object_HIDDEN_1 r7) (`forall r8,  imp (object_HIDDEN_1 r8) (imp (⊆_TARSKI_1 ((enum_TARSKI_2 r4 r5 ) )((enum_TARSKI_2 r7 r8 ) )) (or (=_HIDDEN_1 r4 r7 ) (=_HIDDEN_1 r4 r8 ))))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_23 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (imp (≠_HIDDEN_2 r3 r6 ) (=_XBOOLE_0_4 ((⊕_XBOOLE_0_5 (enum_TARSKI_1 r3 ) (enum_TARSKI_1 r6 ) ) )((enum_TARSKI_2 r3 r6 ) ))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_24 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (=_XBOOLE_0_4 ((bool_ZFMISC_1_1 (enum_TARSKI_1 r3 ) ) )((enum_TARSKI_2 ∅_XBOOLE_0_1  (enum_TARSKI_1 r3 ) ) ))) ≔ 
begin
  abort;

// Reduction

opaque symbol Red_566_10 (v137:U)  : Prf (imp (object_HIDDEN_1 v137) (=_HIDDEN_1 (union_TARSKI_3 (enum_TARSKI_1 v137 ) ) v137)) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_25 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (=_HIDDEN_1 ((union_TARSKI_3 (enum_TARSKI_1 r3 ) ) )r3 )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_26 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (=_XBOOLE_0_4 ((union_TARSKI_3 (enum_TARSKI_2 (enum_TARSKI_1 r3 ) (enum_TARSKI_1 r6 ) ) ) )((enum_TARSKI_2 r3 r6 ) )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_28 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r7,  imp (object_HIDDEN_1 r7) (iff (∈_HIDDEN_3 ((pair_TARSKI_4 r3 r6 ) )((Cartesian_ZFMISC_1_2 (enum_TARSKI_1 r4 ) (enum_TARSKI_1 r7 ) ) )) (and (=_HIDDEN_1 r3 r4 ) (=_HIDDEN_1 r6 r7 ))))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_29 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (=_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 (enum_TARSKI_1 r3 ) (enum_TARSKI_1 r6 ) ) )((enum_TARSKI_1 (pair_TARSKI_4 r3 r6 ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_30 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r9,  imp (object_HIDDEN_1 r9) (and (=_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 (enum_TARSKI_1 r3 ) (enum_TARSKI_2 r6 r9 ) ) )((enum_TARSKI_2 (pair_TARSKI_4 r3 r6 ) (pair_TARSKI_4 r3 r9 ) ) )) (=_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 (enum_TARSKI_2 r3 r6 ) (enum_TARSKI_1 r9 ) ) )((enum_TARSKI_2 (pair_TARSKI_4 r3 r9 ) (pair_TARSKI_4 r6 r9 ) ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_31 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r14,  imp (set_HIDDEN_2 r14) (iff (⊆_TARSKI_1 ((enum_TARSKI_1 r3 ) )r14 ) (∈_HIDDEN_3 r3 r14 )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_32 : Prf (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r22,  imp (set_HIDDEN_2 r22) (iff (⊆_TARSKI_1 ((enum_TARSKI_2 r4 r5 ) )r22 ) (and (∈_HIDDEN_3 r4 r22 ) (∈_HIDDEN_3 r5 r22 )))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_33 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r19,  imp (set_HIDDEN_2 r19) (iff (⊆_TARSKI_1 r19 ((enum_TARSKI_1 r3 ) )) (or (=_XBOOLE_0_4 r19 (∅_XBOOLE_0_1  )) (=_XBOOLE_0_4 r19 ((enum_TARSKI_1 r3 ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_34 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r14,  imp (set_HIDDEN_2 r14) (`forall r19,  imp (set_HIDDEN_2 r19) (imp (and (⊆_TARSKI_1 r19 r14 ) (not (∈_HIDDEN_3 r3 r19 ))) (⊆_TARSKI_1 r19 ((\_XBOOLE_0_4 r14 (enum_TARSKI_1 r3 ) ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_35 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r14,  imp (set_HIDDEN_2 r14) (imp (and (≠_HIDDEN_2 r14 ((enum_TARSKI_1 r3 ) )) (≠_HIDDEN_2 r14 (∅_XBOOLE_0_1  ))) (`exists r6,  and (object_HIDDEN_1 r6) (and (∈_HIDDEN_3 r6 r14 ) (≠_HIDDEN_2 r6 r3 )))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_36 : Prf (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r22,  imp (set_HIDDEN_2 r22) (iff (⊆_TARSKI_1 r22 ((enum_TARSKI_2 r4 r5 ) )) (or (or (or (=_XBOOLE_0_4 r22 (∅_XBOOLE_0_1  )) (=_XBOOLE_0_4 r22 ((enum_TARSKI_1 r4 ) ))) (=_XBOOLE_0_4 r22 ((enum_TARSKI_1 r5 ) ))) (=_XBOOLE_0_4 r22 ((enum_TARSKI_2 r4 r5 ) ))))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_37 : Prf (`forall r9,  imp (object_HIDDEN_1 r9) (`forall r14,  imp (set_HIDDEN_2 r14) (`forall r19,  imp (set_HIDDEN_2 r19) (imp (=_XBOOLE_0_4 ((enum_TARSKI_1 r9 ) )((∪_XBOOLE_0_2 r14 r19 ) )) (or (or (and (=_XBOOLE_0_4 r14 ((enum_TARSKI_1 r9 ) )) (=_XBOOLE_0_4 r19 ((enum_TARSKI_1 r9 ) ))) (and (=_XBOOLE_0_4 r14 (∅_XBOOLE_0_1  )) (=_XBOOLE_0_4 r19 ((enum_TARSKI_1 r9 ) )))) (and (=_XBOOLE_0_4 r14 ((enum_TARSKI_1 r9 ) )) (=_XBOOLE_0_4 r19 (∅_XBOOLE_0_1  )))))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_38 : Prf (`forall r9,  imp (object_HIDDEN_1 r9) (`forall r14,  imp (set_HIDDEN_2 r14) (`forall r19,  imp (set_HIDDEN_2 r19) (imp (and (=_XBOOLE_0_4 ((enum_TARSKI_1 r9 ) )((∪_XBOOLE_0_2 r14 r19 ) )) (≠_HIDDEN_2 r14 r19 )) (or (=_XBOOLE_0_4 r14 (∅_XBOOLE_0_1  )) (=_XBOOLE_0_4 r19 (∅_XBOOLE_0_1  ))))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_39 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r14,  imp (set_HIDDEN_2 r14) (imp (⊆_TARSKI_1 ((∪_XBOOLE_0_2 (enum_TARSKI_1 r3 ) r14 ) )r14 ) (∈_HIDDEN_3 r3 r14 )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_40 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r14,  imp (set_HIDDEN_2 r14) (imp (∈_HIDDEN_3 r3 r14 ) (=_XBOOLE_0_4 ((∪_XBOOLE_0_2 (enum_TARSKI_1 r3 ) r14 ) )r14 )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_41 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r22,  imp (set_HIDDEN_2 r22) (imp (⊆_TARSKI_1 ((∪_XBOOLE_0_2 (enum_TARSKI_2 r3 r6 ) r22 ) )r22 ) (∈_HIDDEN_3 r3 r22 ))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_42 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r22,  imp (set_HIDDEN_2 r22) (imp (and (∈_HIDDEN_3 r3 r22 ) (∈_HIDDEN_3 r6 r22 )) (=_XBOOLE_0_4 ((∪_XBOOLE_0_2 (enum_TARSKI_2 r3 r6 ) r22 ) )r22 ))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_43 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r14,  imp (set_HIDDEN_2 r14) (≠_HIDDEN_2 ((∪_XBOOLE_0_2 (enum_TARSKI_1 r3 ) r14 ) )(∅_XBOOLE_0_1  )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_44 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r14,  imp (set_HIDDEN_2 r14) (≠_HIDDEN_2 ((∪_XBOOLE_0_2 (enum_TARSKI_2 r3 r6 ) r14 ) )(∅_XBOOLE_0_1  ))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_45 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r14,  imp (set_HIDDEN_2 r14) (imp (=_XBOOLE_0_4 ((∩_XBOOLE_0_3 r14 (enum_TARSKI_1 r3 ) ) )((enum_TARSKI_1 r3 ) )) (∈_HIDDEN_3 r3 r14 )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_46 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r14,  imp (set_HIDDEN_2 r14) (imp (∈_HIDDEN_3 r3 r14 ) (=_XBOOLE_0_4 ((∩_XBOOLE_0_3 r14 (enum_TARSKI_1 r3 ) ) )((enum_TARSKI_1 r3 ) ))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_47 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r22,  imp (set_HIDDEN_2 r22) (imp (and (∈_HIDDEN_3 r3 r22 ) (∈_HIDDEN_3 r6 r22 )) (=_XBOOLE_0_4 ((∩_XBOOLE_0_3 (enum_TARSKI_2 r3 r6 ) r22 ) )((enum_TARSKI_2 r3 r6 ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_48 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r14,  imp (set_HIDDEN_2 r14) (imp (misses_XBOOLE_0_1 ((enum_TARSKI_1 r3 ) )r14 ) (not (∈_HIDDEN_3 r3 r14 ))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_49 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r22,  imp (set_HIDDEN_2 r22) (imp (misses_XBOOLE_0_1 ((enum_TARSKI_2 r3 r6 ) )r22 ) (not (∈_HIDDEN_3 r3 r22 )))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_50 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r14,  imp (set_HIDDEN_2 r14) (imp (not (∈_HIDDEN_3 r3 r14 )) (misses_XBOOLE_0_1 ((enum_TARSKI_1 r3 ) )r14 )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_51 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r22,  imp (set_HIDDEN_2 r22) (imp (and (not (∈_HIDDEN_3 r3 r22 )) (not (∈_HIDDEN_3 r6 r22 ))) (misses_XBOOLE_0_1 ((enum_TARSKI_2 r3 r6 ) )r22 ))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_52 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r14,  imp (set_HIDDEN_2 r14) (or (misses_XBOOLE_0_1 ((enum_TARSKI_1 r3 ) )r14 ) (=_XBOOLE_0_4 ((∩_XBOOLE_0_3 (enum_TARSKI_1 r3 ) r14 ) )((enum_TARSKI_1 r3 ) ))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_53 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r14,  imp (set_HIDDEN_2 r14) (imp (=_XBOOLE_0_4 ((∩_XBOOLE_0_3 (enum_TARSKI_2 r3 r6 ) r14 ) )((enum_TARSKI_1 r3 ) )) (or (not (∈_HIDDEN_3 r6 r14 )) (=_HIDDEN_1 r3 r6 )))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_54 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r14,  imp (set_HIDDEN_2 r14) (imp (and (∈_HIDDEN_3 r3 r14 ) (or (not (∈_HIDDEN_3 r6 r14 )) (=_HIDDEN_1 r3 r6 ))) (=_XBOOLE_0_4 ((∩_XBOOLE_0_3 (enum_TARSKI_2 r3 r6 ) r14 ) )((enum_TARSKI_1 r3 ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_55 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r14,  imp (set_HIDDEN_2 r14) (imp (=_XBOOLE_0_4 ((∩_XBOOLE_0_3 (enum_TARSKI_2 r3 r6 ) r14 ) )((enum_TARSKI_2 r3 r6 ) )) (∈_HIDDEN_3 r3 r14 ))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_56 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r9,  imp (object_HIDDEN_1 r9) (`forall r14,  imp (set_HIDDEN_2 r14) (iff (∈_HIDDEN_3 r9 ((\_XBOOLE_0_4 r14 (enum_TARSKI_1 r3 ) ) )) (and (∈_HIDDEN_3 r9 r14 ) (≠_HIDDEN_2 r9 r3 )))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_57 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r14,  imp (set_HIDDEN_2 r14) (iff (=_XBOOLE_0_4 ((\_XBOOLE_0_4 r14 (enum_TARSKI_1 r3 ) ) )r14 ) (not (∈_HIDDEN_3 r3 r14 ))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_58 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r14,  imp (set_HIDDEN_2 r14) (imp (=_XBOOLE_0_4 ((\_XBOOLE_0_4 r14 (enum_TARSKI_1 r3 ) ) )(∅_XBOOLE_0_1  )) (or (=_XBOOLE_0_4 r14 (∅_XBOOLE_0_1  )) (=_XBOOLE_0_4 r14 ((enum_TARSKI_1 r3 ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_59 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r14,  imp (set_HIDDEN_2 r14) (iff (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (enum_TARSKI_1 r3 ) r14 ) )((enum_TARSKI_1 r3 ) )) (not (∈_HIDDEN_3 r3 r14 ))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_60 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r14,  imp (set_HIDDEN_2 r14) (iff (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (enum_TARSKI_1 r3 ) r14 ) )(∅_XBOOLE_0_1  )) (∈_HIDDEN_3 r3 r14 )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_61 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r14,  imp (set_HIDDEN_2 r14) (or (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (enum_TARSKI_1 r3 ) r14 ) )(∅_XBOOLE_0_1  )) (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (enum_TARSKI_1 r3 ) r14 ) )((enum_TARSKI_1 r3 ) ))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_62 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r14,  imp (set_HIDDEN_2 r14) (iff (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (enum_TARSKI_2 r3 r6 ) r14 ) )((enum_TARSKI_1 r3 ) )) (and (not (∈_HIDDEN_3 r3 r14 )) (or (∈_HIDDEN_3 r6 r14 ) (=_HIDDEN_1 r3 r6 ))))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_63 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r14,  imp (set_HIDDEN_2 r14) (iff (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (enum_TARSKI_2 r3 r6 ) r14 ) )((enum_TARSKI_2 r3 r6 ) )) (and (not (∈_HIDDEN_3 r3 r14 )) (not (∈_HIDDEN_3 r6 r14 ))))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_64 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r14,  imp (set_HIDDEN_2 r14) (iff (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (enum_TARSKI_2 r3 r6 ) r14 ) )(∅_XBOOLE_0_1  )) (and (∈_HIDDEN_3 r3 r14 ) (∈_HIDDEN_3 r6 r14 )))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_65 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r14,  imp (set_HIDDEN_2 r14) (or (or (or (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (enum_TARSKI_2 r3 r6 ) r14 ) )(∅_XBOOLE_0_1  )) (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (enum_TARSKI_2 r3 r6 ) r14 ) )((enum_TARSKI_1 r3 ) ))) (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (enum_TARSKI_2 r3 r6 ) r14 ) )((enum_TARSKI_1 r6 ) ))) (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (enum_TARSKI_2 r3 r6 ) r14 ) )((enum_TARSKI_2 r3 r6 ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_66 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r14,  imp (set_HIDDEN_2 r14) (iff (=_XBOOLE_0_4 ((\_XBOOLE_0_4 r14 (enum_TARSKI_2 r3 r6 ) ) )(∅_XBOOLE_0_1  )) (or (or (or (=_XBOOLE_0_4 r14 (∅_XBOOLE_0_1  )) (=_XBOOLE_0_4 r14 ((enum_TARSKI_1 r3 ) ))) (=_XBOOLE_0_4 r14 ((enum_TARSKI_1 r6 ) ))) (=_XBOOLE_0_4 r14 ((enum_TARSKI_2 r3 r6 ) ))))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_67 : Prf (`forall r12,  imp (set_HIDDEN_2 r12) (`forall r13,  imp (set_HIDDEN_2 r13) (imp (⊆_TARSKI_1 r12 r13 ) (⊆_TARSKI_1 ((bool_ZFMISC_1_1 r12 ) )((bool_ZFMISC_1_1 r13 ) ))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_68 : Prf (`forall r12,  imp (set_HIDDEN_2 r12) (⊆_TARSKI_1 ((enum_TARSKI_1 r12 ) )((bool_ZFMISC_1_1 r12 ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_69 : Prf (`forall r12,  imp (set_HIDDEN_2 r12) (`forall r13,  imp (set_HIDDEN_2 r13) (⊆_TARSKI_1 ((∪_XBOOLE_0_2 (bool_ZFMISC_1_1 r12 ) (bool_ZFMISC_1_1 r13 ) ) )((bool_ZFMISC_1_1 (∪_XBOOLE_0_2 r12 r13 ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_70 : Prf (`forall r12,  imp (set_HIDDEN_2 r12) (`forall r13,  imp (set_HIDDEN_2 r13) (imp (=_XBOOLE_0_4 ((∪_XBOOLE_0_2 (bool_ZFMISC_1_1 r12 ) (bool_ZFMISC_1_1 r13 ) ) )((bool_ZFMISC_1_1 (∪_XBOOLE_0_2 r12 r13 ) ) )) (are_c=-comparable_XBOOLE_0_3 r12 r13 )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_71 : Prf (`forall r12,  imp (set_HIDDEN_2 r12) (`forall r13,  imp (set_HIDDEN_2 r13) (=_XBOOLE_0_4 ((bool_ZFMISC_1_1 (∩_XBOOLE_0_3 r12 r13 ) ) )((∩_XBOOLE_0_3 (bool_ZFMISC_1_1 r12 ) (bool_ZFMISC_1_1 r13 ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_72 : Prf (`forall r12,  imp (set_HIDDEN_2 r12) (`forall r13,  imp (set_HIDDEN_2 r13) (⊆_TARSKI_1 ((bool_ZFMISC_1_1 (\_XBOOLE_0_4 r12 r13 ) ) )((∪_XBOOLE_0_2 (enum_TARSKI_1 ∅_XBOOLE_0_1  ) (\_XBOOLE_0_4 (bool_ZFMISC_1_1 r12 ) (bool_ZFMISC_1_1 r13 ) ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_73 : Prf (`forall r12,  imp (set_HIDDEN_2 r12) (`forall r13,  imp (set_HIDDEN_2 r13) (⊆_TARSKI_1 ((∪_XBOOLE_0_2 (bool_ZFMISC_1_1 (\_XBOOLE_0_4 r12 r13 ) ) (bool_ZFMISC_1_1 (\_XBOOLE_0_4 r13 r12 ) ) ) )((bool_ZFMISC_1_1 (⊕_XBOOLE_0_5 r12 r13 ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_74 : Prf (`forall r12,  imp (set_HIDDEN_2 r12) (`forall r14,  imp (set_HIDDEN_2 r14) (imp (∈_TARSKI_2 r14 r12 ) (⊆_TARSKI_1 r14 ((union_TARSKI_3 r12 ) ))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_75 : Prf (`forall r14,  imp (set_HIDDEN_2 r14) (`forall r19,  imp (set_HIDDEN_2 r19) (=_XBOOLE_0_4 ((union_TARSKI_3 (enum_TARSKI_2 r14 r19 ) ) )((∪_XBOOLE_0_2 r14 r19 ) )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_76 : Prf (`forall r12,  imp (set_HIDDEN_2 r12) (`forall r22,  imp (set_HIDDEN_2 r22) (imp (`forall r14,  imp (set_HIDDEN_2 r14) (imp (∈_TARSKI_2 r14 r12 ) (⊆_TARSKI_1 r14 r22 ))) (⊆_TARSKI_1 ((union_TARSKI_3 r12 ) )r22 )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_77 : Prf (`forall r12,  imp (set_HIDDEN_2 r12) (`forall r13,  imp (set_HIDDEN_2 r13) (imp (⊆_TARSKI_1 r12 r13 ) (⊆_TARSKI_1 ((union_TARSKI_3 r12 ) )((union_TARSKI_3 r13 ) ))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_78 : Prf (`forall r12,  imp (set_HIDDEN_2 r12) (`forall r13,  imp (set_HIDDEN_2 r13) (=_XBOOLE_0_4 ((union_TARSKI_3 (∪_XBOOLE_0_2 r12 r13 ) ) )((∪_XBOOLE_0_2 (union_TARSKI_3 r12 ) (union_TARSKI_3 r13 ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_79 : Prf (`forall r12,  imp (set_HIDDEN_2 r12) (`forall r13,  imp (set_HIDDEN_2 r13) (⊆_TARSKI_1 ((union_TARSKI_3 (∩_XBOOLE_0_3 r12 r13 ) ) )((∩_XBOOLE_0_3 (union_TARSKI_3 r12 ) (union_TARSKI_3 r13 ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_80 : Prf (`forall r12,  imp (set_HIDDEN_2 r12) (`forall r13,  imp (set_HIDDEN_2 r13) (imp (`forall r14,  imp (set_HIDDEN_2 r14) (imp (∈_TARSKI_2 r14 r12 ) (misses_XBOOLE_0_1 r14 r13 ))) (misses_XBOOLE_0_1 ((union_TARSKI_3 r12 ) )r13 )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_81 : Prf (`forall r12,  imp (set_HIDDEN_2 r12) (=_XBOOLE_0_4 ((union_TARSKI_3 (bool_ZFMISC_1_1 r12 ) ) )r12 )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_82 : Prf (`forall r12,  imp (set_HIDDEN_2 r12) (⊆_TARSKI_1 r12 ((bool_ZFMISC_1_1 (union_TARSKI_3 r12 ) ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_83 : Prf (`forall r12,  imp (set_HIDDEN_2 r12) (`forall r13,  imp (set_HIDDEN_2 r13) (imp (`forall r14,  `forall r19,  imp (and (set_HIDDEN_2 r14) (set_HIDDEN_2 r19)) (imp (and (and (≠_HIDDEN_2 r14 r19 ) (∈_TARSKI_2 r14 ((∪_XBOOLE_0_2 r12 r13 ) ))) (∈_TARSKI_2 r19 ((∪_XBOOLE_0_2 r12 r13 ) ))) (misses_XBOOLE_0_1 r14 r19 ))) (=_XBOOLE_0_4 ((union_TARSKI_3 (∩_XBOOLE_0_3 r12 r13 ) ) )((∩_XBOOLE_0_3 (union_TARSKI_3 r12 ) (union_TARSKI_3 r13 ) ) ))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_84 : Prf (`forall r9,  imp (object_HIDDEN_1 r9) (`forall r12,  imp (set_HIDDEN_2 r12) (`forall r14,  imp (set_HIDDEN_2 r14) (`forall r19,  imp (set_HIDDEN_2 r19) (imp (and (⊆_TARSKI_1 r12 ((Cartesian_ZFMISC_1_2 r14 r19 ) )) (∈_HIDDEN_3 r9 r12 )) (`exists r3,  `exists r6,  and (and (object_HIDDEN_1 r3) (object_HIDDEN_1 r6)) (and (and (∈_HIDDEN_3 r3 r14 ) (∈_HIDDEN_3 r6 r19 )) (=_HIDDEN_1 r9 ((pair_TARSKI_4 r3 r6 ) ))))))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_85 : Prf (`forall r9,  imp (object_HIDDEN_1 r9) (`forall r15,  imp (set_HIDDEN_2 r15) (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r20,  imp (set_HIDDEN_2 r20) (`forall r21,  imp (set_HIDDEN_2 r21) (imp (∈_HIDDEN_3 r9 ((∩_XBOOLE_0_3 (Cartesian_ZFMISC_1_2 r15 r20 ) (Cartesian_ZFMISC_1_2 r16 r21 ) ) )) (`exists r3,  `exists r6,  and (and (object_HIDDEN_1 r3) (object_HIDDEN_1 r6)) (and (and (=_HIDDEN_1 r9 ((pair_TARSKI_4 r3 r6 ) )) (∈_HIDDEN_3 r3 ((∩_XBOOLE_0_3 r15 r16 ) ))) (∈_HIDDEN_3 r6 ((∩_XBOOLE_0_3 r20 r21 ) )))))))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_86 : Prf (`forall r14,  imp (set_HIDDEN_2 r14) (`forall r19,  imp (set_HIDDEN_2 r19) (⊆_TARSKI_1 ((Cartesian_ZFMISC_1_2 r14 r19 ) )((bool_ZFMISC_1_1 (bool_ZFMISC_1_1 (∪_XBOOLE_0_2 r14 r19 ) ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_87 : Prf (`forall r14,  imp (set_HIDDEN_2 r14) (`forall r19,  imp (set_HIDDEN_2 r19) (`forall b307, `forall b308,  imp (and (object_HIDDEN_1 b307) (object_HIDDEN_1 b308)) (iff (∈_HIDDEN_3 ((pair_TARSKI_4 b307 b308 ) )((Cartesian_ZFMISC_1_2 r14 r19 ) )) (and (∈_HIDDEN_3 b307 r14 ) (∈_HIDDEN_3 b308 r19 )))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_88 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r14,  imp (set_HIDDEN_2 r14) (`forall r19,  imp (set_HIDDEN_2 r19) (imp (∈_HIDDEN_3 ((pair_TARSKI_4 r3 r6 ) )((Cartesian_ZFMISC_1_2 r14 r19 ) )) (∈_HIDDEN_3 ((pair_TARSKI_4 r6 r3 ) )((Cartesian_ZFMISC_1_2 r19 r14 ) ))))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_89 : Prf (`forall r15,  imp (set_HIDDEN_2 r15) (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r20,  imp (set_HIDDEN_2 r20) (`forall r21,  imp (set_HIDDEN_2 r21) (imp (`forall r3,  `forall r6,  imp (and (object_HIDDEN_1 r3) (object_HIDDEN_1 r6)) (iff (∈_HIDDEN_3 ((pair_TARSKI_4 r3 r6 ) )((Cartesian_ZFMISC_1_2 r15 r20 ) )) (∈_HIDDEN_3 ((pair_TARSKI_4 r3 r6 ) )((Cartesian_ZFMISC_1_2 r16 r21 ) )))) (=_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 r15 r20 ) )((Cartesian_ZFMISC_1_2 r16 r21 ) ))))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_90 : Prf (`forall r14,  imp (set_HIDDEN_2 r14) (`forall r19,  imp (set_HIDDEN_2 r19) (iff (=_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 r14 r19 ) )(∅_XBOOLE_0_1  )) (or (=_XBOOLE_0_4 r14 (∅_XBOOLE_0_1  )) (=_XBOOLE_0_4 r19 (∅_XBOOLE_0_1  )))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_91 : Prf (`forall r14,  imp (set_HIDDEN_2 r14) (`forall r19,  imp (set_HIDDEN_2 r19) (imp (and (and (≠_HIDDEN_2 r14 (∅_XBOOLE_0_1  )) (≠_HIDDEN_2 r19 (∅_XBOOLE_0_1  ))) (=_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 r14 r19 ) )((Cartesian_ZFMISC_1_2 r19 r14 ) ))) (=_XBOOLE_0_4 r14 r19 )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_92 : Prf (`forall r14,  imp (set_HIDDEN_2 r14) (`forall r19,  imp (set_HIDDEN_2 r19) (imp (=_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 r14 r14 ) )((Cartesian_ZFMISC_1_2 r19 r19 ) )) (=_XBOOLE_0_4 r14 r19 )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_93 : Prf (`forall r14,  imp (set_HIDDEN_2 r14) (`forall r19,  imp (set_HIDDEN_2 r19) (imp (⊆_TARSKI_1 r14 ((Cartesian_ZFMISC_1_2 r14 r19 ) )) (=_XBOOLE_0_4 r14 (∅_XBOOLE_0_1  ))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_94 : Prf (`forall r14,  imp (set_HIDDEN_2 r14) (`forall r19,  imp (set_HIDDEN_2 r19) (`forall r22,  imp (set_HIDDEN_2 r22) (imp (and (≠_HIDDEN_2 r22 (∅_XBOOLE_0_1  )) (or (⊆_TARSKI_1 ((Cartesian_ZFMISC_1_2 r14 r22 ) )((Cartesian_ZFMISC_1_2 r19 r22 ) )) (⊆_TARSKI_1 ((Cartesian_ZFMISC_1_2 r22 r14 ) )((Cartesian_ZFMISC_1_2 r22 r19 ) )))) (⊆_TARSKI_1 r14 r19 ))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_95 : Prf (`forall r14,  imp (set_HIDDEN_2 r14) (`forall r19,  imp (set_HIDDEN_2 r19) (`forall r22,  imp (set_HIDDEN_2 r22) (imp (⊆_TARSKI_1 r14 r19 ) (and (⊆_TARSKI_1 ((Cartesian_ZFMISC_1_2 r14 r22 ) )((Cartesian_ZFMISC_1_2 r19 r22 ) )) (⊆_TARSKI_1 ((Cartesian_ZFMISC_1_2 r22 r14 ) )((Cartesian_ZFMISC_1_2 r22 r19 ) ))))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_96 : Prf (`forall r15,  imp (set_HIDDEN_2 r15) (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r20,  imp (set_HIDDEN_2 r20) (`forall r21,  imp (set_HIDDEN_2 r21) (imp (and (⊆_TARSKI_1 r15 r20 ) (⊆_TARSKI_1 r16 r21 )) (⊆_TARSKI_1 ((Cartesian_ZFMISC_1_2 r15 r16 ) )((Cartesian_ZFMISC_1_2 r20 r21 ) ))))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_97 : Prf (`forall r14,  imp (set_HIDDEN_2 r14) (`forall r19,  imp (set_HIDDEN_2 r19) (`forall r22,  imp (set_HIDDEN_2 r22) (and (=_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 (∪_XBOOLE_0_2 r14 r19 ) r22 ) )((∪_XBOOLE_0_2 (Cartesian_ZFMISC_1_2 r14 r22 ) (Cartesian_ZFMISC_1_2 r19 r22 ) ) )) (=_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 r22 (∪_XBOOLE_0_2 r14 r19 ) ) )((∪_XBOOLE_0_2 (Cartesian_ZFMISC_1_2 r22 r14 ) (Cartesian_ZFMISC_1_2 r22 r19 ) ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_98 : Prf (`forall r15,  imp (set_HIDDEN_2 r15) (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r20,  imp (set_HIDDEN_2 r20) (`forall r21,  imp (set_HIDDEN_2 r21) (=_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 (∪_XBOOLE_0_2 r15 r16 ) (∪_XBOOLE_0_2 r20 r21 ) ) )((∪_XBOOLE_0_2 (∪_XBOOLE_0_2 (∪_XBOOLE_0_2 (Cartesian_ZFMISC_1_2 r15 r20 ) (Cartesian_ZFMISC_1_2 r15 r21 ) ) (Cartesian_ZFMISC_1_2 r16 r20 ) ) (Cartesian_ZFMISC_1_2 r16 r21 ) ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_99 : Prf (`forall r14,  imp (set_HIDDEN_2 r14) (`forall r19,  imp (set_HIDDEN_2 r19) (`forall r22,  imp (set_HIDDEN_2 r22) (and (=_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 (∩_XBOOLE_0_3 r14 r19 ) r22 ) )((∩_XBOOLE_0_3 (Cartesian_ZFMISC_1_2 r14 r22 ) (Cartesian_ZFMISC_1_2 r19 r22 ) ) )) (=_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 r22 (∩_XBOOLE_0_3 r14 r19 ) ) )((∩_XBOOLE_0_3 (Cartesian_ZFMISC_1_2 r22 r14 ) (Cartesian_ZFMISC_1_2 r22 r19 ) ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_100 : Prf (`forall r15,  imp (set_HIDDEN_2 r15) (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r20,  imp (set_HIDDEN_2 r20) (`forall r21,  imp (set_HIDDEN_2 r21) (=_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 (∩_XBOOLE_0_3 r15 r16 ) (∩_XBOOLE_0_3 r20 r21 ) ) )((∩_XBOOLE_0_3 (Cartesian_ZFMISC_1_2 r15 r20 ) (Cartesian_ZFMISC_1_2 r16 r21 ) ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_101 : Prf (`forall r12,  imp (set_HIDDEN_2 r12) (`forall r13,  imp (set_HIDDEN_2 r13) (`forall r14,  imp (set_HIDDEN_2 r14) (`forall r19,  imp (set_HIDDEN_2 r19) (imp (and (⊆_TARSKI_1 r12 r14 ) (⊆_TARSKI_1 r13 r19 )) (=_XBOOLE_0_4 ((∩_XBOOLE_0_3 (Cartesian_ZFMISC_1_2 r12 r19 ) (Cartesian_ZFMISC_1_2 r14 r13 ) ) )((Cartesian_ZFMISC_1_2 r12 r13 ) ))))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_102 : Prf (`forall r14,  imp (set_HIDDEN_2 r14) (`forall r19,  imp (set_HIDDEN_2 r19) (`forall r22,  imp (set_HIDDEN_2 r22) (and (=_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 (\_XBOOLE_0_4 r14 r19 ) r22 ) )((\_XBOOLE_0_4 (Cartesian_ZFMISC_1_2 r14 r22 ) (Cartesian_ZFMISC_1_2 r19 r22 ) ) )) (=_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 r22 (\_XBOOLE_0_4 r14 r19 ) ) )((\_XBOOLE_0_4 (Cartesian_ZFMISC_1_2 r22 r14 ) (Cartesian_ZFMISC_1_2 r22 r19 ) ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_103 : Prf (`forall r15,  imp (set_HIDDEN_2 r15) (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r20,  imp (set_HIDDEN_2 r20) (`forall r21,  imp (set_HIDDEN_2 r21) (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (Cartesian_ZFMISC_1_2 r15 r16 ) (Cartesian_ZFMISC_1_2 r20 r21 ) ) )((∪_XBOOLE_0_2 (Cartesian_ZFMISC_1_2 (\_XBOOLE_0_4 r15 r20 ) r16 ) (Cartesian_ZFMISC_1_2 r15 (\_XBOOLE_0_4 r16 r21 ) ) ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_104 : Prf (`forall r15,  imp (set_HIDDEN_2 r15) (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r20,  imp (set_HIDDEN_2 r20) (`forall r21,  imp (set_HIDDEN_2 r21) (imp (or (misses_XBOOLE_0_1 r15 r16 ) (misses_XBOOLE_0_1 r20 r21 )) (misses_XBOOLE_0_1 ((Cartesian_ZFMISC_1_2 r15 r20 ) )((Cartesian_ZFMISC_1_2 r16 r21 ) ))))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_105 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r9,  imp (object_HIDDEN_1 r9) (`forall r19,  imp (set_HIDDEN_2 r19) (iff (∈_HIDDEN_3 ((pair_TARSKI_4 r3 r6 ) )((Cartesian_ZFMISC_1_2 (enum_TARSKI_1 r9 ) r19 ) )) (and (=_HIDDEN_1 r3 r9 ) (∈_HIDDEN_3 r6 r19 ))))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_106 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r9,  imp (object_HIDDEN_1 r9) (`forall r14,  imp (set_HIDDEN_2 r14) (iff (∈_HIDDEN_3 ((pair_TARSKI_4 r3 r6 ) )((Cartesian_ZFMISC_1_2 r14 (enum_TARSKI_1 r9 ) ) )) (and (∈_HIDDEN_3 r3 r14 ) (=_HIDDEN_1 r6 r9 ))))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_107 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r14,  imp (set_HIDDEN_2 r14) (imp (≠_HIDDEN_2 r14 (∅_XBOOLE_0_1  )) (and (≠_HIDDEN_2 ((Cartesian_ZFMISC_1_2 (enum_TARSKI_1 r3 ) r14 ) )(∅_XBOOLE_0_1  )) (≠_HIDDEN_2 ((Cartesian_ZFMISC_1_2 r14 (enum_TARSKI_1 r3 ) ) )(∅_XBOOLE_0_1  )))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_108 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r14,  imp (set_HIDDEN_2 r14) (`forall r19,  imp (set_HIDDEN_2 r19) (imp (≠_HIDDEN_2 r3 r6 ) (and (misses_XBOOLE_0_1 ((Cartesian_ZFMISC_1_2 (enum_TARSKI_1 r3 ) r14 ) )((Cartesian_ZFMISC_1_2 (enum_TARSKI_1 r6 ) r19 ) )) (misses_XBOOLE_0_1 ((Cartesian_ZFMISC_1_2 r14 (enum_TARSKI_1 r3 ) ) )((Cartesian_ZFMISC_1_2 r19 (enum_TARSKI_1 r6 ) ) )))))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_109 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r14,  imp (set_HIDDEN_2 r14) (and (=_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 (enum_TARSKI_2 r3 r6 ) r14 ) )((∪_XBOOLE_0_2 (Cartesian_ZFMISC_1_2 (enum_TARSKI_1 r3 ) r14 ) (Cartesian_ZFMISC_1_2 (enum_TARSKI_1 r6 ) r14 ) ) )) (=_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 r14 (enum_TARSKI_2 r3 r6 ) ) )((∪_XBOOLE_0_2 (Cartesian_ZFMISC_1_2 r14 (enum_TARSKI_1 r3 ) ) (Cartesian_ZFMISC_1_2 r14 (enum_TARSKI_1 r6 ) ) ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_110 : Prf (`forall r15,  imp (set_HIDDEN_2 r15) (`forall r16,  imp (set_HIDDEN_2 r16) (`forall r20,  imp (set_HIDDEN_2 r20) (`forall r21,  imp (set_HIDDEN_2 r21) (imp (and (and (≠_HIDDEN_2 r15 (∅_XBOOLE_0_1  )) (≠_HIDDEN_2 r20 (∅_XBOOLE_0_1  ))) (=_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 r15 r20 ) )((Cartesian_ZFMISC_1_2 r16 r21 ) ))) (and (=_XBOOLE_0_4 r15 r16 ) (=_XBOOLE_0_4 r20 r21 ))))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_111 : Prf (`forall r14,  imp (set_HIDDEN_2 r14) (`forall r19,  imp (set_HIDDEN_2 r19) (imp (or (⊆_TARSKI_1 r14 ((Cartesian_ZFMISC_1_2 r14 r19 ) )) (⊆_TARSKI_1 r14 ((Cartesian_ZFMISC_1_2 r19 r14 ) ))) (=_XBOOLE_0_4 r14 (∅_XBOOLE_0_1  ))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_112 : Prf (`forall r23,  imp (set_HIDDEN_2 r23) (`exists r24,  and (set_HIDDEN_2 r24) (and (and (and (∈_TARSKI_2 r23 r24 ) (`forall r14,  `forall r19,  imp (and (set_HIDDEN_2 r14) (set_HIDDEN_2 r19)) (imp (and (∈_TARSKI_2 r14 r24 ) (⊆_TARSKI_1 r19 r14 )) (∈_TARSKI_2 r19 r24 )))) (`forall r14,  imp (set_HIDDEN_2 r14) (imp (∈_TARSKI_2 r14 r24 ) (∈_TARSKI_2 ((bool_ZFMISC_1_1 r14 ) )r24 )))) (`forall r14,  imp (set_HIDDEN_2 r14) (imp (⊆_TARSKI_1 r14 r24 ) (or (are_equipotent_TARSKI_3 r14 r24 ) (∈_TARSKI_2 r14 r24 ))))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_113 : Prf (`forall r25,  imp (object_HIDDEN_1 r25) (`forall r27,  imp (set_HIDDEN_2 r27) (`forall r28,  imp (set_HIDDEN_2 r28) (`forall r29,  imp (set_HIDDEN_2 r29) (`forall r30,  imp (set_HIDDEN_2 r30) (imp (and (∈_HIDDEN_3 r25 ((Cartesian_ZFMISC_1_2 r27 r29 ) )) (∈_HIDDEN_3 r25 ((Cartesian_ZFMISC_1_2 r28 r30 ) ))) (∈_HIDDEN_3 r25 ((Cartesian_ZFMISC_1_2 (∩_XBOOLE_0_3 r27 r28 ) (∩_XBOOLE_0_3 r29 r30 ) ) )))))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_114 : Prf (`forall r27,  imp (set_HIDDEN_2 r27) (`forall r28,  imp (set_HIDDEN_2 r28) (`forall r29,  imp (set_HIDDEN_2 r29) (`forall r30,  imp (set_HIDDEN_2 r30) (imp (and (⊆_TARSKI_1 ((Cartesian_ZFMISC_1_2 r27 r28 ) )((Cartesian_ZFMISC_1_2 r29 r30 ) )) (≠_HIDDEN_2 ((Cartesian_ZFMISC_1_2 r27 r28 ) )(∅_XBOOLE_0_1  ))) (and (⊆_TARSKI_1 r27 r29 ) (⊆_TARSKI_1 r28 r30 ))))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_115 : Prf (`forall b588,  `forall b589, `forall b590, `forall b591,  imp (and (and (and (and (set_HIDDEN_2 b588) ((not ( empty_XBOOLE_0_1 b588  )))) (set_HIDDEN_2 b589)) (set_HIDDEN_2 b590)) (set_HIDDEN_2 b591)) (imp (or (⊆_TARSKI_1 ((Cartesian_ZFMISC_1_2 b588 b589 ) )((Cartesian_ZFMISC_1_2 b590 b591 ) )) (⊆_TARSKI_1 ((Cartesian_ZFMISC_1_2 b589 b588 ) )((Cartesian_ZFMISC_1_2 b591 b590 ) ))) (⊆_TARSKI_1 b589 b591 ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_116 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r26,  imp (set_HIDDEN_2 r26) (imp (∈_HIDDEN_3 r3 r26 ) (=_XBOOLE_0_4 ((∪_XBOOLE_0_2 (\_XBOOLE_0_4 r26 (enum_TARSKI_1 r3 ) ) (enum_TARSKI_1 r3 ) ) )r26 )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_117 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r26,  imp (set_HIDDEN_2 r26) (imp (not (∈_HIDDEN_3 r3 r26 )) (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (∪_XBOOLE_0_2 r26 (enum_TARSKI_1 r3 ) ) (enum_TARSKI_1 r3 ) ) )r26 )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_118 : Prf (`forall b606, `forall b607, `forall b608, `forall b609,  imp (and (and (and (set_HIDDEN_2 b606) (set_HIDDEN_2 b607)) (set_HIDDEN_2 b608)) (set_HIDDEN_2 b609)) (iff (⊆_TARSKI_1 b609 ((enum_ENUMSET1_1 b606 b607 b608 ) )) (or (or (or (or (or (or (or (=_XBOOLE_0_4 b609 (∅_XBOOLE_0_1  )) (=_XBOOLE_0_4 b609 ((enum_TARSKI_1 b606 ) ))) (=_XBOOLE_0_4 b609 ((enum_TARSKI_1 b607 ) ))) (=_XBOOLE_0_4 b609 ((enum_TARSKI_1 b608 ) ))) (=_XBOOLE_0_4 b609 ((enum_TARSKI_2 b606 b607 ) ))) (=_XBOOLE_0_4 b609 ((enum_TARSKI_2 b607 b608 ) ))) (=_XBOOLE_0_4 b609 ((enum_TARSKI_2 b606 b608 ) ))) (=_XBOOLE_0_4 b609 ((enum_ENUMSET1_1 b606 b607 b608 ) ))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_119 : Prf (`forall r23,  imp (set_HIDDEN_2 r23) (`forall r24,  imp (set_HIDDEN_2 r24) (`forall r27,  imp (set_HIDDEN_2 r27) (`forall r28,  imp (set_HIDDEN_2 r28) (`forall r29,  imp (set_HIDDEN_2 r29) (`forall r30,  imp (set_HIDDEN_2 r30) (imp (and (⊆_TARSKI_1 r23 ((Cartesian_ZFMISC_1_2 r27 r29 ) )) (⊆_TARSKI_1 r24 ((Cartesian_ZFMISC_1_2 r28 r30 ) ))) (⊆_TARSKI_1 ((∪_XBOOLE_0_2 r23 r24 ) )((Cartesian_ZFMISC_1_2 (∪_XBOOLE_0_2 r27 r28 ) (∪_XBOOLE_0_2 r29 r30 ) ) ))))))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_120 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r26,  imp (set_HIDDEN_2 r26) (imp (and (not (∈_HIDDEN_3 r3 r26 )) (not (∈_HIDDEN_3 r6 r26 ))) (=_XBOOLE_0_4 r26 ((\_XBOOLE_0_4 r26 (enum_TARSKI_2 r3 r6 ) ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_121 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r26,  imp (set_HIDDEN_2 r26) (imp (and (not (∈_HIDDEN_3 r3 r26 )) (not (∈_HIDDEN_3 r6 r26 ))) (=_XBOOLE_0_4 r26 ((\_XBOOLE_0_4 (∪_XBOOLE_0_2 r26 (enum_TARSKI_2 r3 r6 ) ) (enum_TARSKI_2 r3 r6 ) ) )))))) ≔ 
begin
  abort;

// Definition

// Predicate
symbol are_mutually_distinct_ZFMISC_1_1 : U → U → U → U ;

// SimplePredicativeDefiniens

symbol are_mutually_distinct_ZFMISC_1_1-def (v635:U) (v636:U) (v637:U) ≔ imp (and (and (object_HIDDEN_1 v635) (object_HIDDEN_1 v636)) (object_HIDDEN_1 v637)) (and (and (≠_HIDDEN_2 v635 v636 ) (≠_HIDDEN_2 v635 v637 )) (≠_HIDDEN_2 v636 v637 ));

// Definition

// Predicate
symbol are_mutually_distinct_ZFMISC_1_2 : U → U → U → U → U ;

// SimplePredicativeDefiniens

symbol are_mutually_distinct_ZFMISC_1_2-def (v638:U) (v639:U) (v640:U) (v641:U) ≔ imp (and (and (and (object_HIDDEN_1 v638) (object_HIDDEN_1 v639)) (object_HIDDEN_1 v640)) (object_HIDDEN_1 v641)) (and (and (and (and (and (≠_HIDDEN_2 v638 v639 ) (≠_HIDDEN_2 v638 v640 )) (≠_HIDDEN_2 v638 v641 )) (≠_HIDDEN_2 v639 v640 )) (≠_HIDDEN_2 v639 v641 )) (≠_HIDDEN_2 v640 v641 ));

// Definition

// Predicate
symbol are_mutually_distinct_ZFMISC_1_3 : U → U → U → U → U → U ;

// SimplePredicativeDefiniens

symbol are_mutually_distinct_ZFMISC_1_3-def (v642:U) (v643:U) (v644:U) (v645:U) (v646:U) ≔ imp (and (and (and (and (object_HIDDEN_1 v642) (object_HIDDEN_1 v643)) (object_HIDDEN_1 v644)) (object_HIDDEN_1 v645)) (object_HIDDEN_1 v646)) (and (and (and (and (and (and (and (and (and (≠_HIDDEN_2 v642 v643 ) (≠_HIDDEN_2 v642 v644 )) (≠_HIDDEN_2 v642 v645 )) (≠_HIDDEN_2 v642 v646 )) (≠_HIDDEN_2 v643 v644 )) (≠_HIDDEN_2 v643 v645 )) (≠_HIDDEN_2 v643 v646 )) (≠_HIDDEN_2 v644 v645 )) (≠_HIDDEN_2 v644 v646 )) (≠_HIDDEN_2 v645 v646 ));

// Definition

// Predicate
symbol are_mutually_distinct_ZFMISC_1_4 : U → U → U → U → U → U → U ;

// SimplePredicativeDefiniens

symbol are_mutually_distinct_ZFMISC_1_4-def (v647:U) (v648:U) (v649:U) (v650:U) (v651:U) (v652:U) ≔ imp (and (and (and (and (and (object_HIDDEN_1 v647) (object_HIDDEN_1 v648)) (object_HIDDEN_1 v649)) (object_HIDDEN_1 v650)) (object_HIDDEN_1 v651)) (object_HIDDEN_1 v652)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (≠_HIDDEN_2 v647 v648 ) (≠_HIDDEN_2 v647 v649 )) (≠_HIDDEN_2 v647 v650 )) (≠_HIDDEN_2 v647 v651 )) (≠_HIDDEN_2 v647 v652 )) (≠_HIDDEN_2 v648 v649 )) (≠_HIDDEN_2 v648 v650 )) (≠_HIDDEN_2 v648 v651 )) (≠_HIDDEN_2 v648 v652 )) (≠_HIDDEN_2 v649 v650 )) (≠_HIDDEN_2 v649 v651 )) (≠_HIDDEN_2 v649 v652 )) (≠_HIDDEN_2 v650 v651 )) (≠_HIDDEN_2 v650 v652 )) (≠_HIDDEN_2 v651 v652 ));

// Definition

// Predicate
symbol are_mutually_distinct_ZFMISC_1_5 : U → U → U → U → U → U → U → U ;

// SimplePredicativeDefiniens

symbol are_mutually_distinct_ZFMISC_1_5-def (v653:U) (v654:U) (v655:U) (v656:U) (v657:U) (v658:U) (v659:U) ≔ imp (and (and (and (and (and (and (object_HIDDEN_1 v653) (object_HIDDEN_1 v654)) (object_HIDDEN_1 v655)) (object_HIDDEN_1 v656)) (object_HIDDEN_1 v657)) (object_HIDDEN_1 v658)) (object_HIDDEN_1 v659)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (≠_HIDDEN_2 v653 v654 ) (≠_HIDDEN_2 v653 v655 )) (≠_HIDDEN_2 v653 v656 )) (≠_HIDDEN_2 v653 v657 )) (≠_HIDDEN_2 v653 v658 )) (≠_HIDDEN_2 v653 v659 )) (≠_HIDDEN_2 v654 v655 )) (≠_HIDDEN_2 v654 v656 )) (≠_HIDDEN_2 v654 v657 )) (≠_HIDDEN_2 v654 v658 )) (≠_HIDDEN_2 v654 v659 )) (≠_HIDDEN_2 v655 v656 )) (≠_HIDDEN_2 v655 v657 )) (≠_HIDDEN_2 v655 v658 )) (≠_HIDDEN_2 v655 v659 )) (≠_HIDDEN_2 v656 v657 )) (≠_HIDDEN_2 v656 v658 )) (≠_HIDDEN_2 v656 v659 )) (≠_HIDDEN_2 v657 v658 )) (≠_HIDDEN_2 v657 v659 )) (≠_HIDDEN_2 v658 v659 ));

opaque symbol Th_ZFMISC_1_122 : Prf (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r7,  imp (object_HIDDEN_1 r7) (`forall r8,  imp (object_HIDDEN_1 r8) (=_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 (enum_TARSKI_2 r4 r5 ) (enum_TARSKI_2 r7 r8 ) ) )((enum_ENUMSET1_2 (pair_TARSKI_4 r4 r7 ) (pair_TARSKI_4 r4 r8 ) (pair_TARSKI_4 r5 r7 ) (pair_TARSKI_4 r5 r8 ) ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_123 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r12,  imp (set_HIDDEN_2 r12) (imp (≠_HIDDEN_2 r3 r6 ) (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (∪_XBOOLE_0_2 r12 (enum_TARSKI_1 r3 ) ) (enum_TARSKI_1 r6 ) ) )((∪_XBOOLE_0_2 (\_XBOOLE_0_4 r12 (enum_TARSKI_1 r6 ) ) (enum_TARSKI_1 r3 ) ) )))))) ≔ 
begin
  abort;

// Definition

// Attribute
symbol trivial_ZFMISC_1_1 : U → U ;

// SimplePredicativeDefiniens

symbol trivial_ZFMISC_1_1-def (r26:U) ≔ imp (set_HIDDEN_2 r26) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (imp (and (∈_HIDDEN_3 r3 r26 ) (∈_HIDDEN_3 r6 r26 )) (=_HIDDEN_1 r3 r6 ))));

// Cluster

// Conditional

opaque symbol Cl_2511_11 : Prf (`forall a, imp (object_HIDDEN_1 a) (imp ((empty_XBOOLE_0_1 a ) )(trivial_ZFMISC_1_1 a ))) ≔ 
begin
  abort;

// Cluster

// Conditional

opaque symbol Cl_2516_11 : Prf (`forall a, imp (object_HIDDEN_1 a) (imp ((not ( trivial_ZFMISC_1_1 a  )) )(not ( empty_XBOOLE_0_1 a  )))) ≔ 
begin
  abort;

// Cluster

// Functorial

opaque symbol Cl_2522_11 (r3:U)  : Prf (imp (object_HIDDEN_1 r3) ((trivial_ZFMISC_1_1 ((enum_TARSKI_1 r3 )) ))) ≔ 
begin
  abort;

// Cluster

// Existential

opaque symbol Cl_2536_11 : Prf (`exists a, and (set_HIDDEN_2 a) (( and (trivial_ZFMISC_1_1 a ) (not ( empty_XBOOLE_0_1 a  ))) )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_124 : Prf (`forall b668, `forall b669, `forall b670,  `forall b671,  imp (and (and (and (set_HIDDEN_2 b668) (set_HIDDEN_2 b669)) (set_HIDDEN_2 b670)) (object_HIDDEN_1 b671)) (imp (and (and (⊆_TARSKI_1 b668 b669 ) (=_XBOOLE_0_4 ((∩_XBOOLE_0_3 b669 b670 ) )((enum_TARSKI_1 b671 ) ))) (∈_HIDDEN_3 b671 b668 )) (=_XBOOLE_0_4 ((∩_XBOOLE_0_3 b668 b670 ) )((enum_TARSKI_1 b671 ) )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_125 : Prf (`forall r10,  imp (object_HIDDEN_1 r10) (`forall b680, `forall b681, `forall b682,  imp (and (and (set_HIDDEN_2 b680) (set_HIDDEN_2 b681)) (set_HIDDEN_2 b682)) (imp (and (and (⊆_TARSKI_1 ((∩_XBOOLE_0_3 b680 b681 ) )((enum_TARSKI_1 r10 ) )) (∈_HIDDEN_3 r10 b682 )) (misses_XBOOLE_0_1 b682 b681 )) (misses_XBOOLE_0_1 ((∪_XBOOLE_0_2 b680 b682 ) )b681 )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_126 : Prf (`forall b690, `forall b691,  imp (and (set_HIDDEN_2 b690) (set_HIDDEN_2 b691)) (imp (`forall b692, `forall b693,  imp (and (set_HIDDEN_2 b692) (set_HIDDEN_2 b693)) (imp (and (∈_TARSKI_2 b692 b690 ) (∈_TARSKI_2 b693 b691 )) (misses_XBOOLE_0_1 b692 b693 ))) (misses_XBOOLE_0_1 ((union_TARSKI_3 b690 ) )((union_TARSKI_3 b691 ) )))) ≔ 
begin
  abort;

// Cluster

// Functorial

opaque symbol Cl_2605_11 (v709:U) (v710:U)  : Prf (imp (and (set_HIDDEN_2 v709) (and (set_HIDDEN_2 v710) ((empty_XBOOLE_0_1 v710 )))) ((empty_XBOOLE_0_1 ((Cartesian_ZFMISC_1_2 v709 v710 )) ))) ≔ 
begin
  abort;

// Cluster

// Functorial

opaque symbol Cl_2611_11 (v711:U) (v712:U)  : Prf (imp (and (and (set_HIDDEN_2 v711) ((empty_XBOOLE_0_1 v711 ))) (set_HIDDEN_2 v712)) ((empty_XBOOLE_0_1 ((Cartesian_ZFMISC_1_2 v711 v712 )) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_127 : Prf (`forall r12,  imp (set_HIDDEN_2 r12) (`forall r13,  imp (set_HIDDEN_2 r13) (not (∈_TARSKI_2 r12 ((Cartesian_ZFMISC_1_2 r12 r13 ) ))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_128 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r13,  imp (set_HIDDEN_2 r13) (imp (=_HIDDEN_1 r13 ((pair_TARSKI_4 r3 (enum_TARSKI_1 r3 ) ) )) (∈_TARSKI_2 r13 ((Cartesian_ZFMISC_1_2 (enum_TARSKI_1 r3 ) r13 ) ))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_129 : Prf (`forall r12,  imp (set_HIDDEN_2 r12) (`forall r13,  imp (set_HIDDEN_2 r13) (imp (∈_TARSKI_2 r13 ((Cartesian_ZFMISC_1_2 r12 r13 ) )) (`exists b720,  and (object_HIDDEN_1 b720) (and (∈_HIDDEN_3 b720 r12 ) (=_HIDDEN_1 r13 ((pair_TARSKI_4 b720 (enum_TARSKI_1 b720 ) ) ))))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_130 : Prf (`forall r12,  imp (set_HIDDEN_2 r12) (`forall r13,  imp (set_HIDDEN_2 r13) (imp (and (⊆_TARSKI_1 r13 r12 ) ((trivial_ZFMISC_1_1 r12 ))) ((trivial_ZFMISC_1_1 r13 ))))) ≔ 
begin
  abort;

// Cluster

// Existential

opaque symbol Cl_2684_11 : Prf (`exists a, and (set_HIDDEN_2 a) ((not ( trivial_ZFMISC_1_1 a  )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_131 : Prf (`forall r26,  imp (set_HIDDEN_2 r26) (imp (( and (not ( empty_XBOOLE_0_1 r26  )) (trivial_ZFMISC_1_1 r26 )) ) (`exists r3,  and (object_HIDDEN_1 r3) (=_XBOOLE_0_4 r26 ((enum_TARSKI_1 r3 ) ))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_132 : Prf (`forall b736,  `forall b737,  imp (and (set_HIDDEN_2 b736) (and (set_HIDDEN_2 b737) ((trivial_ZFMISC_1_1 b737 )))) (imp (∈_TARSKI_2 b736 b737 ) (=_XBOOLE_0_4 b737 ((enum_TARSKI_1 b736 ) )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_133 : Prf (`forall b744, `forall b745, `forall b746, `forall b747,  imp (and (and (and (set_HIDDEN_2 b744) (set_HIDDEN_2 b745)) (set_HIDDEN_2 b746)) (set_HIDDEN_2 b747)) (imp (and (and (∈_TARSKI_2 b744 b747 ) (∈_TARSKI_2 b745 b747 )) (∈_TARSKI_2 b746 b747 )) (⊆_TARSKI_1 ((enum_ENUMSET1_1 b744 b745 b746 ) )b747 ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_134 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r26,  imp (set_HIDDEN_2 r26) (imp (∈_HIDDEN_3 ((pair_TARSKI_4 r3 r6 ) )r26 ) (and (∈_HIDDEN_3 r3 ((union_TARSKI_3 (union_TARSKI_3 r26 ) ) )) (∈_HIDDEN_3 r6 ((union_TARSKI_3 (union_TARSKI_3 r26 ) ) ))))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_135 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r19,  imp (set_HIDDEN_2 r19) (`forall r26,  imp (set_HIDDEN_2 r26) (imp (⊆_TARSKI_1 r26 ((∪_XBOOLE_0_2 r19 (enum_TARSKI_1 r3 ) ) )) (or (∈_HIDDEN_3 r3 r26 ) (⊆_TARSKI_1 r26 r19 )))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_136 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r26,  imp (set_HIDDEN_2 r26) (iff (∈_HIDDEN_3 r3 ((∪_XBOOLE_0_2 r26 (enum_TARSKI_1 r6 ) ) )) (or (∈_HIDDEN_3 r3 r26 ) (=_HIDDEN_1 r3 r6 )))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_137 : Prf (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r19,  imp (set_HIDDEN_2 r19) (`forall r26,  imp (set_HIDDEN_2 r26) (iff (⊆_TARSKI_1 ((∪_XBOOLE_0_2 r26 (enum_TARSKI_1 r3 ) ) )r19 ) (and (∈_HIDDEN_3 r3 r19 ) (⊆_TARSKI_1 r26 r19 )))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_138 : Prf (`forall r11,  imp (object_HIDDEN_1 r11) (`forall b768, `forall b769,  imp (and (set_HIDDEN_2 b768) (set_HIDDEN_2 b769)) (imp (and (⊆_TARSKI_1 b768 b769 ) (⊆_TARSKI_1 b769 ((∪_XBOOLE_0_2 b768 (enum_TARSKI_1 r11 ) ) ))) (or (=_XBOOLE_0_4 ((∪_XBOOLE_0_2 b768 (enum_TARSKI_1 r11 ) ) )b769 ) (=_XBOOLE_0_4 b768 b769 ))))) ≔ 
begin
  abort;

// Cluster

// Functorial

opaque symbol Cl_2809_11 (v775:U) (v776:U)  : Prf (imp (and (and (set_HIDDEN_2 v775) ((trivial_ZFMISC_1_1 v775 ))) (and (set_HIDDEN_2 v776) ((trivial_ZFMISC_1_1 v776 )))) ((trivial_ZFMISC_1_1 ((Cartesian_ZFMISC_1_2 v775 v776 )) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_139 : Prf (`forall b779,  imp (set_HIDDEN_2 b779) (iff ((not ( trivial_ZFMISC_1_1 b779  ))) (`forall r3,  imp (object_HIDDEN_1 r3) ((not ( empty_XBOOLE_0_1 ((\_XBOOLE_0_4 b779 (enum_TARSKI_1 r3 ) ))  )))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_140 : Prf (`forall r26,  imp (set_HIDDEN_2 r26) (≠_HIDDEN_2 ((enum_TARSKI_1 r26 ) )r26 )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_141 : Prf (`forall r26,  imp (set_HIDDEN_2 r26) (≠_HIDDEN_2 ((bool_ZFMISC_1_1 r26 ) )r26 )) ≔ 
begin
  abort;
