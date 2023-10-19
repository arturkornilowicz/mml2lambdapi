require open lp.predicatelogic;
require open lp.hidden;

opaque symbol Th_TARSKI_0_1 : Prf (`forall x, set_HIDDEN_2 x) ≔ 
begin
  abort;

opaque symbol Th_TARSKI_0_2 : Prf (`forall X, `forall Y, imp (`forall x, iff (∈_HIDDEN_3 x X ) (∈_HIDDEN_3 x Y )) (=_HIDDEN_1 X Y )) ≔ 
begin
  abort;

opaque symbol Th_TARSKI_0_3 : Prf (`forall x, `forall y, `exists z, `forall a, iff (∈_HIDDEN_3 a z ) (or (=_HIDDEN_1 a x ) (=_HIDDEN_1 a y ))) ≔ 
begin
  abort;

opaque symbol Th_TARSKI_0_4 : Prf (`forall X, `exists Z, `forall x, iff (∈_HIDDEN_3 x Z ) (`exists Y, and (∈_HIDDEN_3 x Y ) (∈_HIDDEN_3 Y X ))) ≔ 
begin
  abort;

opaque symbol Th_TARSKI_0_5 : Prf (`forall x, `forall X, imp (∈_HIDDEN_3 x X ) (`exists Y, and (∈_HIDDEN_3 Y X ) (not (`exists x, and (∈_HIDDEN_3 x X ) (∈_HIDDEN_3 x Y ))))) ≔ 
begin
  abort;

// Scheme

opaque symbol Sch_Replacement_1 (A : U) (P : U → U → U)  : 
Prf (`forall x, `forall y, `forall z, imp (and (P x y ) (P x z )) (=_HIDDEN_1 y z )) → 
Prf (`exists X, `forall x, iff (∈_HIDDEN_3 x X ) (`exists y, and (∈_HIDDEN_3 y (A  )) (P y x ))) ≔ 
begin
  abort;
