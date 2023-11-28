require open lp.predicatelogic;
require open lp.hidden;
require open lp.tarski;
require open lp.xboole_0;

opaque symbol Th_BOOLE_1 : Prf (`forall b1,  imp (set_HIDDEN_2 b1) (=_XBOOLE_0_4 ((∪_XBOOLE_0_2 b1 ∅_XBOOLE_0_1  ) )b1 )) ≔ 
begin
  abort;

opaque symbol Th_BOOLE_2 : Prf (`forall b6,  imp (set_HIDDEN_2 b6) (=_XBOOLE_0_4 ((∩_XBOOLE_0_3 b6 ∅_XBOOLE_0_1  ) )(∅_XBOOLE_0_1  ))) ≔ 
begin
  abort;

opaque symbol Th_BOOLE_3 : Prf (`forall b10,  imp (set_HIDDEN_2 b10) (=_XBOOLE_0_4 ((\_XBOOLE_0_4 b10 ∅_XBOOLE_0_1  ) )b10 )) ≔ 
begin
  abort;

opaque symbol Th_BOOLE_4 : Prf (`forall b14,  imp (set_HIDDEN_2 b14) (=_XBOOLE_0_4 ((\_XBOOLE_0_4 ∅_XBOOLE_0_1  b14 ) )(∅_XBOOLE_0_1  ))) ≔ 
begin
  abort;

opaque symbol Th_BOOLE_5 : Prf (`forall b18,  imp (set_HIDDEN_2 b18) (=_XBOOLE_0_4 ((⊕_XBOOLE_0_5 b18 ∅_XBOOLE_0_1  ) )b18 )) ≔ 
begin
  abort;

opaque symbol Th_BOOLE_6 : Prf (`forall b28,  imp (set_HIDDEN_2 b28) (imp ((empty_XBOOLE_0_1 b28 )) (=_XBOOLE_0_4 b28 (∅_XBOOLE_0_1  )))) ≔ 
begin
  abort;

opaque symbol Th_BOOLE_7 : Prf (`forall b30, `forall b31,  imp (and (set_HIDDEN_2 b30) (set_HIDDEN_2 b31)) (imp (∈_TARSKI_2 b30 b31 ) ((not ( empty_XBOOLE_0_1 b31  ))))) ≔ 
begin
  abort;

opaque symbol Th_BOOLE_8 : Prf (`forall b34, `forall b35,  imp (and (set_HIDDEN_2 b34) (set_HIDDEN_2 b35)) (imp (and ((empty_XBOOLE_0_1 b34 )) (≠_HIDDEN_2 b34 b35 )) ((not ( empty_XBOOLE_0_1 b35  ))))) ≔ 
begin
  abort;
