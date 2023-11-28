require open lp.predicatelogic;
require open lp.hidden;
require open lp.tarski;
require open lp.xboole_0;
require open lp.enumset1;

opaque symbol Th_XREGULAR_1 : Prf (`forall r21,  imp (and (set_HIDDEN_2 r21) ((not ( empty_XBOOLE_0_1 r21  )))) (`exists r9,  and (set_HIDDEN_2 r9) (and (∈_TARSKI_2 r9 r21 ) (misses_XBOOLE_0_1 r9 r21 )))) ≔ 
begin
  abort;

opaque symbol Th_XREGULAR_2 : Prf (`forall r21,  imp (and (set_HIDDEN_2 r21) ((not ( empty_XBOOLE_0_1 r21  )))) (`exists r9,  and (set_HIDDEN_2 r9) (and (∈_TARSKI_2 r9 r21 ) (`forall r10,  imp (set_HIDDEN_2 r10) (imp (∈_TARSKI_2 r10 r9 ) (misses_XBOOLE_0_1 r10 r21 )))))) ≔ 
begin
  abort;

opaque symbol Th_XREGULAR_3 : Prf (`forall r21,  imp (and (set_HIDDEN_2 r21) ((not ( empty_XBOOLE_0_1 r21  )))) (`exists r9,  and (set_HIDDEN_2 r9) (and (∈_TARSKI_2 r9 r21 ) (`forall r10,  `forall r11,  imp (and (set_HIDDEN_2 r10) (set_HIDDEN_2 r11)) (imp (and (∈_TARSKI_2 r10 r11 ) (∈_TARSKI_2 r11 r9 )) (misses_XBOOLE_0_1 r10 r21 )))))) ≔ 
begin
  abort;

opaque symbol Th_XREGULAR_4 : Prf (`forall r21,  imp (and (set_HIDDEN_2 r21) ((not ( empty_XBOOLE_0_1 r21  )))) (`exists r9,  and (set_HIDDEN_2 r9) (and (∈_TARSKI_2 r9 r21 ) (`forall r10,  `forall r11,  `forall r12,  imp (and (and (set_HIDDEN_2 r10) (set_HIDDEN_2 r11)) (set_HIDDEN_2 r12)) (imp (and (and (∈_TARSKI_2 r10 r11 ) (∈_TARSKI_2 r11 r12 )) (∈_TARSKI_2 r12 r9 )) (misses_XBOOLE_0_1 r10 r21 )))))) ≔ 
begin
  abort;

opaque symbol Th_XREGULAR_5 : Prf (`forall r21,  imp (and (set_HIDDEN_2 r21) ((not ( empty_XBOOLE_0_1 r21  )))) (`exists r9,  and (set_HIDDEN_2 r9) (and (∈_TARSKI_2 r9 r21 ) (`forall r10,  `forall r11,  `forall r12,  `forall r13,  imp (and (and (and (set_HIDDEN_2 r10) (set_HIDDEN_2 r11)) (set_HIDDEN_2 r12)) (set_HIDDEN_2 r13)) (imp (and (and (and (∈_TARSKI_2 r10 r11 ) (∈_TARSKI_2 r11 r12 )) (∈_TARSKI_2 r12 r13 )) (∈_TARSKI_2 r13 r9 )) (misses_XBOOLE_0_1 r10 r21 )))))) ≔ 
begin
  abort;

opaque symbol Th_XREGULAR_6 : Prf (`forall r21,  imp (and (set_HIDDEN_2 r21) ((not ( empty_XBOOLE_0_1 r21  )))) (`exists r9,  and (set_HIDDEN_2 r9) (and (∈_TARSKI_2 r9 r21 ) (`forall r10,  `forall r11,  `forall r12,  `forall r13,  `forall r14,  imp (and (and (and (and (set_HIDDEN_2 r10) (set_HIDDEN_2 r11)) (set_HIDDEN_2 r12)) (set_HIDDEN_2 r13)) (set_HIDDEN_2 r14)) (imp (and (and (and (and (∈_TARSKI_2 r10 r11 ) (∈_TARSKI_2 r11 r12 )) (∈_TARSKI_2 r12 r13 )) (∈_TARSKI_2 r13 r14 )) (∈_TARSKI_2 r14 r9 )) (misses_XBOOLE_0_1 r10 r21 )))))) ≔ 
begin
  abort;

opaque symbol Th_XREGULAR_7 : Prf (`forall r3,  imp (set_HIDDEN_2 r3) (`forall r4,  imp (set_HIDDEN_2 r4) (`forall r5,  imp (set_HIDDEN_2 r5) (not (and (and (∈_TARSKI_2 r3 r4 ) (∈_TARSKI_2 r4 r5 )) (∈_TARSKI_2 r5 r3 )))))) ≔ 
begin
  abort;

opaque symbol Th_XREGULAR_8 : Prf (`forall r3,  imp (set_HIDDEN_2 r3) (`forall r4,  imp (set_HIDDEN_2 r4) (`forall r5,  imp (set_HIDDEN_2 r5) (`forall r6,  imp (set_HIDDEN_2 r6) (not (and (and (and (∈_TARSKI_2 r3 r4 ) (∈_TARSKI_2 r4 r5 )) (∈_TARSKI_2 r5 r6 )) (∈_TARSKI_2 r6 r3 ))))))) ≔ 
begin
  abort;

opaque symbol Th_XREGULAR_9 : Prf (`forall r3,  imp (set_HIDDEN_2 r3) (`forall r4,  imp (set_HIDDEN_2 r4) (`forall r5,  imp (set_HIDDEN_2 r5) (`forall r6,  imp (set_HIDDEN_2 r6) (`forall r7,  imp (set_HIDDEN_2 r7) (not (and (and (and (and (∈_TARSKI_2 r3 r4 ) (∈_TARSKI_2 r4 r5 )) (∈_TARSKI_2 r5 r6 )) (∈_TARSKI_2 r6 r7 )) (∈_TARSKI_2 r7 r3 )))))))) ≔ 
begin
  abort;

opaque symbol Th_XREGULAR_10 : Prf (`forall r3,  imp (set_HIDDEN_2 r3) (`forall r4,  imp (set_HIDDEN_2 r4) (`forall r5,  imp (set_HIDDEN_2 r5) (`forall r6,  imp (set_HIDDEN_2 r6) (`forall r7,  imp (set_HIDDEN_2 r7) (`forall r8,  imp (set_HIDDEN_2 r8) (not (and (and (and (and (and (∈_TARSKI_2 r3 r4 ) (∈_TARSKI_2 r4 r5 )) (∈_TARSKI_2 r5 r6 )) (∈_TARSKI_2 r6 r7 )) (∈_TARSKI_2 r7 r8 )) (∈_TARSKI_2 r8 r3 ))))))))) ≔ 
begin
  abort;
