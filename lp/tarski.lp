require open lp.predicatelogic;
require open lp.hidden;

opaque symbol Th_TARSKI_1 : Prf (`forall b1,  imp (object_HIDDEN_1 b1) (set_HIDDEN_2 b1)) ≔ 
begin
  abort;

opaque symbol Th_TARSKI_2 : Prf (`forall r7,  imp (set_HIDDEN_2 r7) (`forall r8,  imp (set_HIDDEN_2 r8) (imp (`forall b3,  imp (object_HIDDEN_1 b3) (iff (∈_HIDDEN_3 b3 r7 ) (∈_HIDDEN_3 b3 r8 ))) (=_HIDDEN_1 r7 r8 )))) ≔ 
begin
  abort;

// Definition

// Functor
symbol enum_TARSKI_1 : U → U ;

// SimplePredicativeDefiniens

symbol enum_TARSKI_1-def (v5:U) ≔ imp (object_HIDDEN_1 v5) (`forall b6,  imp (object_HIDDEN_1 b6) (iff (∈_HIDDEN_3 b6 ((enum_TARSKI_1 v5 ) )) (=_HIDDEN_1 b6 v5 )));

// Type Specification

opaque symbol TS_37_8 : Prf (`forall v5, imp (object_HIDDEN_1 v5) (set_HIDDEN_2 (enum_TARSKI_1 v5 ))) ≔ 
begin
  abort;

// Definition

// Functor
symbol enum_TARSKI_2 : U → U → U ;

// SimplePredicativeDefiniens

symbol enum_TARSKI_2-def (v5:U) (v19:U) ≔ imp (and (object_HIDDEN_1 v5) (object_HIDDEN_1 v19)) (`forall r1,  imp (object_HIDDEN_1 r1) (iff (∈_HIDDEN_3 r1 ((enum_TARSKI_2 v5 v19 ) )) (or (=_HIDDEN_1 r1 v5 ) (=_HIDDEN_1 r1 v19 ))));

// Type Specification

opaque symbol TS_56_8 : Prf (`forall v5, imp (object_HIDDEN_1 v5) (`forall v19, imp (object_HIDDEN_1 v19) (set_HIDDEN_2 (enum_TARSKI_2 v5 v19 )))) ≔ 
begin
  abort;

// Definition

// Predicate
symbol ⊆_TARSKI_1 : U → U → U ;

// SimplePredicativeDefiniens

symbol ⊆_TARSKI_1-def (r7:U) (r8:U) ≔ imp (and (set_HIDDEN_2 r7) (set_HIDDEN_2 r8)) (`forall b29,  imp (object_HIDDEN_1 b29) (imp (∈_HIDDEN_3 b29 r7 ) (∈_HIDDEN_3 b29 r8 )));

// Definition

// Functor
symbol union_TARSKI_3 : U → U ;

// SimplePredicativeDefiniens

symbol union_TARSKI_3-def (r7:U) ≔ imp (set_HIDDEN_2 r7) (`forall r1,  imp (object_HIDDEN_1 r1) (iff (∈_HIDDEN_3 r1 ((union_TARSKI_3 r7 ) )) (`exists r8,  and (set_HIDDEN_2 r8) (and (∈_HIDDEN_3 r1 r8 ) (∈_HIDDEN_3 r8 r7 )))));

// Type Specification

opaque symbol TS_84_8 : Prf (`forall r7, imp (set_HIDDEN_2 r7) (set_HIDDEN_2 (union_TARSKI_3 r7 ))) ≔ 
begin
  abort;

opaque symbol Th_TARSKI_3 : Prf (`forall r1,  imp (object_HIDDEN_1 r1) (`forall r7,  imp (set_HIDDEN_2 r7) (imp (∈_HIDDEN_3 r1 r7 ) (`exists r8,  and (set_HIDDEN_2 r8) (and (∈_HIDDEN_3 r8 r7 ) (not (`exists r1,  and (object_HIDDEN_1 r1) (and (∈_HIDDEN_3 r1 r7 ) (∈_HIDDEN_3 r1 r8 ))))))))) ≔ 
begin
  abort;

// Redefinition

// Predicate
symbol ∈_TARSKI_2 : U → U → U ;

// Scheme

opaque symbol Sch_TARSKI_1 (sf1 : U) (sp1 : U → U → U)  : 
Prf (`forall b61, `forall b62, `forall b63,  imp (and (and (object_HIDDEN_1 b61) (object_HIDDEN_1 b62)) (object_HIDDEN_1 b63)) (imp (and ((sp1 b61 b62 )) ((sp1 b61 b63 ))) (=_HIDDEN_1 b62 b63 ))) → 
Prf (`exists r7,  and (set_HIDDEN_2 r7) (`forall b57,  imp (object_HIDDEN_1 b57) (iff (∈_HIDDEN_3 b57 r7 ) (`exists b58,  and (object_HIDDEN_1 b58) (and (∈_HIDDEN_3 b58 (sf1  )) ((sp1 b58 b57 ))))))) ≔ 
begin
  abort;

// Definition

// Functor

// SimpleEquationalDefiniens

symbol pair_TARSKI_4 (v67:U) (v68:U) ≔ imp (and (object_HIDDEN_1 v67) (object_HIDDEN_1 v68)) ((enum_TARSKI_2 (enum_TARSKI_2 v67 v68 ) (enum_TARSKI_1 v67 ) ));

// Type Specification

opaque symbol TS_134_8 : Prf (`forall v67, imp (object_HIDDEN_1 v67) (`forall v68, imp (object_HIDDEN_1 v68) (object_HIDDEN_1 (pair_TARSKI_4 v67 v68 )))) ≔ 
begin
  abort;

// Definition

// Predicate
symbol are_equipotent_TARSKI_3 : U → U → U ;

// SimplePredicativeDefiniens

symbol are_equipotent_TARSKI_3-def (r7:U) (r8:U) ≔ imp (and (set_HIDDEN_2 r7) (set_HIDDEN_2 r8)) (`exists r9,  and (set_HIDDEN_2 r9) (and (and (`forall r1,  imp (object_HIDDEN_1 r1) (imp (∈_HIDDEN_3 r1 r7 ) (`exists r2,  and (object_HIDDEN_1 r2) (and (∈_HIDDEN_3 r2 r8 ) (∈_HIDDEN_3 ((pair_TARSKI_4 r1 r2 ) )r9 ))))) (`forall r2,  imp (object_HIDDEN_1 r2) (imp (∈_HIDDEN_3 r2 r8 ) (`exists r1,  and (object_HIDDEN_1 r1) (and (∈_HIDDEN_3 r1 r7 ) (∈_HIDDEN_3 ((pair_TARSKI_4 r1 r2 ) )r9 )))))) (`forall r1,  `forall r2,  `forall r3,  `forall r4,  imp (and (and (and (object_HIDDEN_1 r1) (object_HIDDEN_1 r2)) (object_HIDDEN_1 r3)) (object_HIDDEN_1 r4)) (imp (and (∈_HIDDEN_3 ((pair_TARSKI_4 r1 r2 ) )r9 ) (∈_HIDDEN_3 ((pair_TARSKI_4 r3 r4 ) )r9 )) (iff (=_HIDDEN_1 r1 r3 ) (=_HIDDEN_1 r2 r4 ))))));
