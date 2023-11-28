require open lp.predicatelogic;
require open lp.hidden;
require open lp.tarski;

opaque symbol Th_TARSKI_A_1 : Prf (`forall r5,  imp (set_HIDDEN_2 r5) (`exists r6,  and (set_HIDDEN_2 r6) (and (and (and (∈_TARSKI_2 r5 r6 ) (`forall r7,  `forall r8,  imp (and (set_HIDDEN_2 r7) (set_HIDDEN_2 r8)) (imp (and (∈_TARSKI_2 r7 r6 ) (⊆_TARSKI_1 r8 r7 )) (∈_TARSKI_2 r8 r6 )))) (`forall r7,  imp (set_HIDDEN_2 r7) (imp (∈_TARSKI_2 r7 r6 ) (`exists r9,  and (set_HIDDEN_2 r9) (and (∈_TARSKI_2 r9 r6 ) (`forall r8,  imp (set_HIDDEN_2 r8) (imp (⊆_TARSKI_1 r8 r7 ) (∈_TARSKI_2 r8 r9 )))))))) (`forall r7,  imp (set_HIDDEN_2 r7) (imp (⊆_TARSKI_1 r7 r6 ) (or (are_equipotent_TARSKI_3 r7 r6 ) (∈_TARSKI_2 r7 r6 ))))))) ≔ 
begin
  abort;
