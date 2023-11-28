require open lp.predicatelogic;
require open lp.hidden;
require open lp.tarski;

// Scheme

opaque symbol Sch_XBOOLE_0_1 (sf1 : U) (sp1 : U → U)  : 
Prf (`exists b1,  and (set_HIDDEN_2 b1) (`forall r4,  imp (object_HIDDEN_1 r4) (iff (∈_HIDDEN_3 r4 b1 ) (and (∈_HIDDEN_3 r4 (sf1  )) ((sp1 r4 )))))) ≔ 
begin
  abort;

// Definition

// Attribute
symbol empty_XBOOLE_0_1 : U → U ;

// SimplePredicativeDefiniens

symbol empty_XBOOLE_0_1-def (v16:U) ≔ imp (set_HIDDEN_2 v16) (not (`exists r4,  and (object_HIDDEN_1 r4) (∈_HIDDEN_3 r4 v16 )));

// Cluster

// Existential

opaque symbol Cl_65_11 : Prf (`exists a, and (set_HIDDEN_2 a) ((empty_XBOOLE_0_1 a ))) ≔ 
begin
  abort;

// Definition

// Functor

// SimpleEquationalDefiniens

symbol ∅_XBOOLE_0_1 ≔ theGlobalChoice;

// Type Specification

opaque symbol TS_78_8 : Prf (set_HIDDEN_2 (∅_XBOOLE_0_1 )) ≔ 
begin
  abort;

// Definition

// Functor
symbol ∪_XBOOLE_0_2 : U → U → U ;

// SimplePredicativeDefiniens

symbol ∪_XBOOLE_0_2-def (v21:U) (v22:U) ≔ imp (and (set_HIDDEN_2 v21) (set_HIDDEN_2 v22)) (`forall r4,  imp (object_HIDDEN_1 r4) (iff (∈_HIDDEN_3 r4 ((∪_XBOOLE_0_2 v21 v22 ) )) (or (∈_HIDDEN_3 r4 v21 ) (∈_HIDDEN_3 r4 v22 ))));

// Type Specification

opaque symbol TS_81_8 : Prf (`forall v21, imp (set_HIDDEN_2 v21) (`forall v22, imp (set_HIDDEN_2 v22) (set_HIDDEN_2 (∪_XBOOLE_0_2 v21 v22 )))) ≔ 
begin
  abort;

// Definition

// Functor
symbol ∩_XBOOLE_0_3 : U → U → U ;

// SimplePredicativeDefiniens

symbol ∩_XBOOLE_0_3-def (v21:U) (v22:U) ≔ imp (and (set_HIDDEN_2 v21) (set_HIDDEN_2 v22)) (`forall r4,  imp (object_HIDDEN_1 r4) (iff (∈_HIDDEN_3 r4 ((∩_XBOOLE_0_3 v21 v22 ) )) (and (∈_HIDDEN_3 r4 v21 ) (∈_HIDDEN_3 r4 v22 ))));

// Type Specification

opaque symbol TS_117_8 : Prf (`forall v21, imp (set_HIDDEN_2 v21) (`forall v22, imp (set_HIDDEN_2 v22) (set_HIDDEN_2 (∩_XBOOLE_0_3 v21 v22 )))) ≔ 
begin
  abort;

// Definition

// Functor
symbol \_XBOOLE_0_4 : U → U → U ;

// SimplePredicativeDefiniens

symbol \_XBOOLE_0_4-def (v21:U) (v22:U) ≔ imp (and (set_HIDDEN_2 v21) (set_HIDDEN_2 v22)) (`forall r4,  imp (object_HIDDEN_1 r4) (iff (∈_HIDDEN_3 r4 ((\_XBOOLE_0_4 v21 v22 ) )) (and (∈_HIDDEN_3 r4 v21 ) (not (∈_HIDDEN_3 r4 v22 )))));

// Type Specification

opaque symbol TS_141_8 : Prf (`forall v21, imp (set_HIDDEN_2 v21) (`forall v22, imp (set_HIDDEN_2 v22) (set_HIDDEN_2 (\_XBOOLE_0_4 v21 v22 )))) ≔ 
begin
  abort;

// Definition

// Functor

// SimpleEquationalDefiniens

symbol ⊕_XBOOLE_0_5 (v50:U) (v51:U) ≔ imp (and (set_HIDDEN_2 v50) (set_HIDDEN_2 v51)) ((∪_XBOOLE_0_2 (\_XBOOLE_0_4 v50 v51 ) (\_XBOOLE_0_4 v51 v50 ) ));

// Type Specification

opaque symbol TS_167_8 : Prf (`forall v50, imp (set_HIDDEN_2 v50) (`forall v51, imp (set_HIDDEN_2 v51) (set_HIDDEN_2 (⊕_XBOOLE_0_5 v50 v51 )))) ≔ 
begin
  abort;

// Definition

// Predicate
symbol misses_XBOOLE_0_1 : U → U → U ;

// SimplePredicativeDefiniens

symbol misses_XBOOLE_0_1-def (v50:U) (v51:U) ≔ imp (and (set_HIDDEN_2 v50) (set_HIDDEN_2 v51)) (=_HIDDEN_1 ((∩_XBOOLE_0_3 v50 v51 ) )(∅_XBOOLE_0_1  ));

// Definition

// Predicate
symbol ⊂_XBOOLE_0_2 : U → U → U ;

// SimplePredicativeDefiniens

symbol ⊂_XBOOLE_0_2-def (v50:U) (v51:U) ≔ imp (and (set_HIDDEN_2 v50) (set_HIDDEN_2 v51)) (and (⊆_TARSKI_1 v50 v51 ) (≠_HIDDEN_2 v50 v51 ));

// Definition

// Predicate
symbol are_c=-comparable_XBOOLE_0_3 : U → U → U ;

// SimplePredicativeDefiniens

symbol are_c=-comparable_XBOOLE_0_3-def (v50:U) (v51:U) ≔ imp (and (set_HIDDEN_2 v50) (set_HIDDEN_2 v51)) (or (⊆_TARSKI_1 v50 v51 ) (⊆_TARSKI_1 v51 v50 ));

// Redefinition

// Predicate
symbol =_XBOOLE_0_4 : U → U → U ;

// SimplePredicativeDefiniens

symbol =_XBOOLE_0_4-def (v50:U) (v51:U) ≔ imp (and (set_HIDDEN_2 v50) (set_HIDDEN_2 v51)) (and (⊆_TARSKI_1 v50 v51 ) (⊆_TARSKI_1 v51 v50 ));

// Predicate Antonym
symbol meets_XBOOLE_0_5 (v52:U) (v53:U) ≔ imp (and (set_HIDDEN_2 v52) (set_HIDDEN_2 v53)) (not (misses_XBOOLE_0_1 v52 v53 ));

opaque symbol Th_XBOOLE_0_1 : Prf (`forall r1,  imp (set_HIDDEN_2 r1) (`forall r2,  imp (set_HIDDEN_2 r2) (`forall r4,  imp (object_HIDDEN_1 r4) (iff (∈_HIDDEN_3 r4 ((⊕_XBOOLE_0_5 r1 r2 ) )) (not (iff (∈_HIDDEN_3 r4 r1 ) (∈_HIDDEN_3 r4 r2 ))))))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_0_2 : Prf (`forall r1,  imp (set_HIDDEN_2 r1) (`forall r2,  imp (set_HIDDEN_2 r2) (`forall r3,  imp (set_HIDDEN_2 r3) (imp (`forall r4,  imp (object_HIDDEN_1 r4) (iff (not (∈_HIDDEN_3 r4 r1 )) (iff (∈_HIDDEN_3 r4 r2 ) (∈_HIDDEN_3 r4 r3 )))) (=_XBOOLE_0_4 r1 ((⊕_XBOOLE_0_5 r2 r3 ) )))))) ≔ 
begin
  abort;

// Cluster

// Functorial

opaque symbol Cl_215_11 : Prf ((empty_XBOOLE_0_1 (∅_XBOOLE_0_1 ) )) ≔ 
begin
  abort;

// Cluster

// Functorial

opaque symbol Cl_221_11 (r4:U)  : Prf (imp (object_HIDDEN_1 r4) ((not ( empty_XBOOLE_0_1 ((enum_TARSKI_1 r4 ))  )))) ≔ 
begin
  abort;

// Cluster

// Functorial

opaque symbol Cl_229_11 (r4:U) (r5:U)  : Prf (imp (and (object_HIDDEN_1 r4) (object_HIDDEN_1 r5)) ((not ( empty_XBOOLE_0_1 ((enum_TARSKI_2 r4 r5 ))  )))) ≔ 
begin
  abort;

// Cluster

// Existential

opaque symbol Cl_239_11 : Prf (`exists a, and (set_HIDDEN_2 a) ((not ( empty_XBOOLE_0_1 a  )))) ≔ 
begin
  abort;

// Cluster

// Functorial

opaque symbol Cl_250_11 (v66:U) (v67:U)  : Prf (imp (and (and (set_HIDDEN_2 v66) ((not ( empty_XBOOLE_0_1 v66  )))) (set_HIDDEN_2 v67)) ((not ( empty_XBOOLE_0_1 ((∪_XBOOLE_0_2 v66 v67 ))  )))) ≔ 
begin
  abort;

// Cluster

// Functorial

opaque symbol Cl_259_11 (v66:U) (v67:U)  : Prf (imp (and (and (set_HIDDEN_2 v66) ((not ( empty_XBOOLE_0_1 v66  )))) (set_HIDDEN_2 v67)) ((not ( empty_XBOOLE_0_1 ((∪_XBOOLE_0_2 v67 v66 ))  )))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_0_3 : Prf (`forall r1,  imp (set_HIDDEN_2 r1) (`forall r2,  imp (set_HIDDEN_2 r2) (iff (meets_XBOOLE_0_5 r1 r2 ) (`exists r4,  and (object_HIDDEN_1 r4) (and (∈_HIDDEN_3 r4 r1 ) (∈_HIDDEN_3 r4 r2 )))))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_0_4 : Prf (`forall r1,  imp (set_HIDDEN_2 r1) (`forall r2,  imp (set_HIDDEN_2 r2) (iff (meets_XBOOLE_0_5 r1 r2 ) (`exists r4,  and (object_HIDDEN_1 r4) (∈_HIDDEN_3 r4 ((∩_XBOOLE_0_3 r1 r2 ) )))))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_0_5 : Prf (`forall r1,  imp (set_HIDDEN_2 r1) (`forall r2,  imp (set_HIDDEN_2 r2) (`forall r4,  imp (object_HIDDEN_1 r4) (imp (and (misses_XBOOLE_0_1 r1 r2 ) (∈_HIDDEN_3 r4 ((∪_XBOOLE_0_2 r1 r2 ) ))) (or (and (∈_HIDDEN_3 r4 r1 ) (not (∈_HIDDEN_3 r4 r2 ))) (and (∈_HIDDEN_3 r4 r2 ) (not (∈_HIDDEN_3 r4 r1 )))))))) ≔ 
begin
  abort;

// Scheme

opaque symbol Sch_XBOOLE_0_2 (sf2 : U) (sf3 : U) (sp2 : U → U)  : 
Prf (`forall r4,  imp (object_HIDDEN_1 r4) (iff (∈_HIDDEN_3 r4 (sf2  )) ((sp2 r4 )))) →
Prf (`forall r4,  imp (object_HIDDEN_1 r4) (iff (∈_HIDDEN_3 r4 (sf3  )) ((sp2 r4 )))) → 
Prf (=_XBOOLE_0_4 (sf2  )(sf3  )) ≔ 
begin
  abort;

// Scheme

opaque symbol Sch_XBOOLE_0_3 (sp3 : U → U)  : 
Prf (`forall b89, `forall b90,  imp (and (set_HIDDEN_2 b89) (set_HIDDEN_2 b90)) (imp (and (`forall r4,  imp (object_HIDDEN_1 r4) (iff (∈_HIDDEN_3 r4 b89 ) ((sp3 r4 )))) (`forall r4,  imp (object_HIDDEN_1 r4) (iff (∈_HIDDEN_3 r4 b90 ) ((sp3 r4 ))))) (=_XBOOLE_0_4 b89 b90 ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_0_6 : Prf (`forall r1,  imp (set_HIDDEN_2 r1) (`forall r2,  imp (set_HIDDEN_2 r2) (imp (⊂_XBOOLE_0_2 r1 r2 ) (`exists r4,  and (object_HIDDEN_1 r4) (and (∈_HIDDEN_3 r4 r2 ) (not (∈_HIDDEN_3 r4 r1 ))))))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_0_7 : Prf (`forall r1,  imp (set_HIDDEN_2 r1) (imp (≠_HIDDEN_2 r1 (∅_XBOOLE_0_1  )) (`exists r4,  and (object_HIDDEN_1 r4) (∈_HIDDEN_3 r4 r1 )))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_0_8 : Prf (`forall r1,  imp (set_HIDDEN_2 r1) (`forall r2,  imp (set_HIDDEN_2 r2) (imp (⊂_XBOOLE_0_2 r1 r2 ) (`exists r4,  and (object_HIDDEN_1 r4) (and (∈_HIDDEN_3 r4 r2 ) (⊆_TARSKI_1 r1 ((\_XBOOLE_0_4 r2 (enum_TARSKI_1 r4 ) ) ))))))) ≔ 
begin
  abort;

// Predicate Antonym
symbol ⊈_XBOOLE_0_6 (v106:U) (v107:U) ≔ imp (and (set_HIDDEN_2 v106) (set_HIDDEN_2 v107)) (not (⊆_TARSKI_1 v106 v107 ));

// Predicate Antonym
symbol ∉_XBOOLE_0_7 (v108:U) (v109:U) ≔ imp (and (object_HIDDEN_1 v108) (set_HIDDEN_2 v109)) (not (∈_HIDDEN_3 v108 v109 ));
