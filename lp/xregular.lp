require open lp.predicatelogic;
require open lp.hidden;
require open lp.tarski;
require open lp.xboole_0;
require open lp.enumset1;

opaque symbol Th_XREGULAR_1 : Prf (`forall X, `exists Y, and (∈_TARSKI_2 Y X ) (misses_XBOOLE_0_1 Y X )) ≔ 
begin
  abort;

opaque symbol Th_XREGULAR_2 : Prf (`forall X, `exists Y, and (∈_TARSKI_2 Y X ) (`forall Y1, imp (∈_TARSKI_2 Y1 Y ) (misses_XBOOLE_0_1 Y1 X ))) ≔ 
begin
  abort;

opaque symbol Th_XREGULAR_3 : Prf (`forall X, `exists Y, and (∈_TARSKI_2 Y X ) (`forall Y1, `forall Y2, imp (and (∈_TARSKI_2 Y1 Y2 ) (∈_TARSKI_2 Y2 Y )) (misses_XBOOLE_0_1 Y1 X ))) ≔ 
begin
  abort;

opaque symbol Th_XREGULAR_4 : Prf (`forall X, `exists Y, and (∈_TARSKI_2 Y X ) (`forall Y1, `forall Y2, `forall Y3, imp (and (and (∈_TARSKI_2 Y1 Y2 ) (∈_TARSKI_2 Y2 Y3 )) (∈_TARSKI_2 Y3 Y )) (misses_XBOOLE_0_1 Y1 X ))) ≔ 
begin
  abort;

opaque symbol Th_XREGULAR_5 : Prf (`forall X, `exists Y, and (∈_TARSKI_2 Y X ) (`forall Y1, `forall Y2, `forall Y3, `forall Y4, imp (and (and (and (∈_TARSKI_2 Y1 Y2 ) (∈_TARSKI_2 Y2 Y3 )) (∈_TARSKI_2 Y3 Y4 )) (∈_TARSKI_2 Y4 Y )) (misses_XBOOLE_0_1 Y1 X ))) ≔ 
begin
  abort;

opaque symbol Th_XREGULAR_6 : Prf (`forall X, `exists Y, and (∈_TARSKI_2 Y X ) (`forall Y1, `forall Y2, `forall Y3, `forall Y4, `forall Y5, imp (and (and (and (and (∈_TARSKI_2 Y1 Y2 ) (∈_TARSKI_2 Y2 Y3 )) (∈_TARSKI_2 Y3 Y4 )) (∈_TARSKI_2 Y4 Y5 )) (∈_TARSKI_2 Y5 Y )) (misses_XBOOLE_0_1 Y1 X ))) ≔ 
begin
  abort;

opaque symbol Th_XREGULAR_7 : Prf (`forall X1, `forall X2, `forall X3, not (and (and (∈_TARSKI_2 X1 X2 ) (∈_TARSKI_2 X2 X3 )) (∈_TARSKI_2 X3 X1 ))) ≔ 
begin
  abort;

opaque symbol Th_XREGULAR_8 : Prf (`forall X1, `forall X2, `forall X3, `forall X4, not (and (and (and (∈_TARSKI_2 X1 X2 ) (∈_TARSKI_2 X2 X3 )) (∈_TARSKI_2 X3 X4 )) (∈_TARSKI_2 X4 X1 ))) ≔ 
begin
  abort;

opaque symbol Th_XREGULAR_9 : Prf (`forall X1, `forall X2, `forall X3, `forall X4, `forall X5, not (and (and (and (and (∈_TARSKI_2 X1 X2 ) (∈_TARSKI_2 X2 X3 )) (∈_TARSKI_2 X3 X4 )) (∈_TARSKI_2 X4 X5 )) (∈_TARSKI_2 X5 X1 ))) ≔ 
begin
  abort;

opaque symbol Th_XREGULAR_10 : Prf (`forall X1, `forall X2, `forall X3, `forall X4, `forall X5, `forall X6, not (and (and (and (and (and (∈_TARSKI_2 X1 X2 ) (∈_TARSKI_2 X2 X3 )) (∈_TARSKI_2 X3 X4 )) (∈_TARSKI_2 X4 X5 )) (∈_TARSKI_2 X5 X6 )) (∈_TARSKI_2 X6 X1 ))) ≔ 
begin
  abort;
