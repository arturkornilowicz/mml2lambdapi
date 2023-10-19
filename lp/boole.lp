require open lp.predicatelogic;
require open lp.hidden;
require open lp.tarski;
require open lp.xboole_0;

opaque symbol Th_BOOLE_1 : Prf (`forall X, =_XBOOLE_0_4 ((∪_XBOOLE_0_2 X (∅_XBOOLE_0_1 ) ) )X ) ≔ 
begin
  abort;

opaque symbol Th_BOOLE_2 : Prf (`forall X, =_XBOOLE_0_4 ((∩_XBOOLE_0_3 X (∅_XBOOLE_0_1 ) ) )((∅_XBOOLE_0_1 ) )) ≔ 
begin
  abort;

opaque symbol Th_BOOLE_3 : Prf (`forall X, =_XBOOLE_0_4 ((\_XBOOLE_0_4 X (∅_XBOOLE_0_1 ) ) )X ) ≔ 
begin
  abort;

opaque symbol Th_BOOLE_4 : Prf (`forall X, =_XBOOLE_0_4 ((\_XBOOLE_0_4 (∅_XBOOLE_0_1 ) X ) )((∅_XBOOLE_0_1 ) )) ≔ 
begin
  abort;

opaque symbol Th_BOOLE_5 : Prf (`forall X, =_XBOOLE_0_4 ((⊕_XBOOLE_0_5 X (∅_XBOOLE_0_1 ) ) )X ) ≔ 
begin
  abort;

opaque symbol Th_BOOLE_6 : Prf (`forall X, imp ((empty_XBOOLE_0_1 X)) (=_XBOOLE_0_4 X ((∅_XBOOLE_0_1 ) ))) ≔ 
begin
  abort;

opaque symbol Th_BOOLE_7 : Prf (`forall x, `forall X, imp (∈_TARSKI_2 x X ) ((not (empty_XBOOLE_0_1 X)))) ≔ 
begin
  abort;

opaque symbol Th_BOOLE_8 : Prf (`forall X, `forall Y, imp (and ((empty_XBOOLE_0_1 X)) (≠_HIDDEN_2 X Y )) ((not (empty_XBOOLE_0_1 Y)))) ≔ 
begin
  abort;
