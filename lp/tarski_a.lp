require open lp.predicatelogic;
require open lp.hidden;
require open lp.tarski;

opaque symbol Th_TARSKI_A_1 : Prf (`forall N, `exists M, and (and (and (∈_TARSKI_2 N M ) (`forall X, `forall Y, imp (and (∈_TARSKI_2 X M ) (⊆_TARSKI_1 Y X )) (∈_TARSKI_2 Y M ))) (`forall X, imp (∈_TARSKI_2 X M ) (`exists Z, and (∈_TARSKI_2 Z M ) (`forall Y, imp (⊆_TARSKI_1 Y X ) (∈_TARSKI_2 Y Z ))))) (`forall X, imp (⊆_TARSKI_1 X M ) (or (are_equipotent_TARSKI_3 X M ) (∈_TARSKI_2 X M )))) ≔ 
begin
  abort;
