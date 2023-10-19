require open lp.predicatelogic;
require open lp.hidden;
require open lp.tarski;
require open lp.xtuple_0;

// Scheme

opaque symbol Sch_Separation_1 (A : U) (P : U → U)  : 
Prf (`exists X, `forall x, iff (∈_TARSKI_2 x X ) (and (∈_TARSKI_2 x (A  )) (P x ))) ≔ 
begin
  abort;

// Scheme

opaque symbol Sch_Extensionality_2 (X : U) (Y : U) (P : U → U)  : 
Prf (`forall x, iff (∈_TARSKI_2 x (X  )) (P x )) →
Prf (`forall x, iff (∈_TARSKI_2 x (Y  )) (P x )) → 
Prf (=_HIDDEN_1 (X  )(Y  )) ≔ 
begin
  abort;

// Scheme

opaque symbol Sch_SetEq_3 (P : U → U)  : 
Prf (`forall X1, `forall X2, imp (and (`forall x, iff (∈_TARSKI_2 x X1 ) (P x )) (`forall x, iff (∈_TARSKI_2 x X2 ) (P x ))) (=_HIDDEN_1 X1 X2 )) ≔ 
begin
  abort;

// Redefinition

// Functor
symbol '1_XFAMILY_1 (x:U) ≔ '1_XTUPLE_0_1 x ;

// Type Specification

opaque symbol TS_80_14 : Prf (`forall x, imp (object_HIDDEN_1  x) (set_HIDDEN_2 ('1_XFAMILY_1 x ))) ≔ 
begin
  abort;

// Redefinition

// Functor
symbol '2_XFAMILY_2 (x:U) ≔ '2_XTUPLE_0_2 x ;

// Type Specification

opaque symbol TS_82_14 : Prf (`forall x, imp (object_HIDDEN_1  x) (set_HIDDEN_2 ('2_XFAMILY_2 x ))) ≔ 
begin
  abort;

// Redefinition

// Functor
symbol '1_3_XFAMILY_3 (x:U) ≔ '1_3_XTUPLE_0_4 x ;

// Type Specification

opaque symbol TS_88_15 : Prf (`forall x, imp (object_HIDDEN_1  x) (set_HIDDEN_2 ('1_3_XFAMILY_3 x ))) ≔ 
begin
  abort;

// Redefinition

// Functor
symbol '2_3_XFAMILY_4 (x:U) ≔ '2_3_XTUPLE_0_5 x ;

// Type Specification

opaque symbol TS_90_15 : Prf (`forall x, imp (object_HIDDEN_1  x) (set_HIDDEN_2 ('2_3_XFAMILY_4 x ))) ≔ 
begin
  abort;

// Redefinition

// Functor
symbol '1_4_XFAMILY_5 (x:U) ≔ '1_4_XTUPLE_0_8 x ;

// Type Specification

opaque symbol TS_96_15 : Prf (`forall x, imp (object_HIDDEN_1  x) (set_HIDDEN_2 ('1_4_XFAMILY_5 x ))) ≔ 
begin
  abort;

// Redefinition

// Functor
symbol '2_4_XFAMILY_6 (x:U) ≔ '2_4_XTUPLE_0_9 x ;

// Type Specification

opaque symbol TS_98_15 : Prf (`forall x, imp (object_HIDDEN_1  x) (set_HIDDEN_2 ('2_4_XFAMILY_6 x ))) ≔ 
begin
  abort;
