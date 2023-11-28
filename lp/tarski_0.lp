require open lp.predicatelogic;
require open lp.hidden;

opaque symbol Th_TARSKI_0_1 : Prf (`forall b1,  imp (object_HIDDEN_1 b1) (set_HIDDEN_2 b1)) ≔ 
begin
  abort;

opaque symbol Th_TARSKI_0_2 : Prf (`forall r5,  imp (set_HIDDEN_2 r5) (`forall r6,  imp (set_HIDDEN_2 r6) (imp (`forall b3,  imp (object_HIDDEN_1 b3) (iff (∈_HIDDEN_3 b3 r5 ) (∈_HIDDEN_3 b3 r6 ))) (=_HIDDEN_1 r5 r6 )))) ≔ 
begin
  abort;

opaque symbol Th_TARSKI_0_3 : Prf (`forall b5, `forall b6,  imp (and (object_HIDDEN_1 b5) (object_HIDDEN_1 b6)) (`exists b7,  and (set_HIDDEN_2 b7) (`forall b8,  imp (object_HIDDEN_1 b8) (iff (∈_HIDDEN_3 b8 b7 ) (or (=_HIDDEN_1 b8 b5 ) (=_HIDDEN_1 b8 b6 )))))) ≔ 
begin
  abort;

opaque symbol Th_TARSKI_0_4 : Prf (`forall b13,  imp (set_HIDDEN_2 b13) (`exists b14,  and (set_HIDDEN_2 b14) (`forall b15,  imp (object_HIDDEN_1 b15) (iff (∈_HIDDEN_3 b15 b14 ) (`exists b16,  and (set_HIDDEN_2 b16) (and (∈_HIDDEN_3 b15 b16 ) (∈_HIDDEN_3 b16 b13 ))))))) ≔ 
begin
  abort;

opaque symbol Th_TARSKI_0_5 : Prf (`forall r1,  imp (object_HIDDEN_1 r1) (`forall r5,  imp (set_HIDDEN_2 r5) (imp (∈_HIDDEN_3 r1 r5 ) (`exists r6,  and (set_HIDDEN_2 r6) (and (∈_HIDDEN_3 r6 r5 ) (not (`exists r1,  and (object_HIDDEN_1 r1) (and (∈_HIDDEN_3 r1 r5 ) (∈_HIDDEN_3 r1 r6 ))))))))) ≔ 
begin
  abort;

// Scheme

opaque symbol Sch_TARSKI_0_1 (sf1 : U) (sp1 : U → U → U)  : 
Prf (`forall b26, `forall b27, `forall b28,  imp (and (and (object_HIDDEN_1 b26) (object_HIDDEN_1 b27)) (object_HIDDEN_1 b28)) (imp (and ((sp1 b26 b27 )) ((sp1 b26 b28 ))) (=_HIDDEN_1 b27 b28 ))) → 
Prf (`exists r5,  and (set_HIDDEN_2 r5) (`forall r1,  imp (object_HIDDEN_1 r1) (iff (∈_HIDDEN_3 r1 r5 ) (`exists r2,  and (object_HIDDEN_1 r2) (and (∈_HIDDEN_3 r2 (sf1  )) ((sp1 r2 r1 ))))))) ≔ 
begin
  abort;
