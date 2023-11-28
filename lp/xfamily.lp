require open lp.predicatelogic;
require open lp.hidden;
require open lp.tarski;
require open lp.xtuple_0;

// Scheme

opaque symbol Sch_XFAMILY_1 (sf1 : U) (sp1 : U → U)  : 
Prf (`exists b1,  and (set_HIDDEN_2 b1) (`forall b2,  imp (set_HIDDEN_2 b2) (iff (∈_TARSKI_2 b2 b1 ) (and (∈_TARSKI_2 b2 (sf1  )) ((sp1 b2 )))))) ≔ 
begin
  abort;

// Scheme

opaque symbol Sch_XFAMILY_2 (sf2 : U) (sf3 : U) (sp2 : U → U)  : 
Prf (`forall b21,  imp (set_HIDDEN_2 b21) (iff (∈_TARSKI_2 b21 (sf2  )) ((sp2 b21 )))) →
Prf (`forall b23,  imp (set_HIDDEN_2 b23) (iff (∈_TARSKI_2 b23 (sf3  )) ((sp2 b23 )))) → 
Prf (=_HIDDEN_1 (sf2  )(sf3  )) ≔ 
begin
  abort;

// Scheme

opaque symbol Sch_XFAMILY_3 (sp3 : U → U)  : 
Prf (`forall b33, `forall b34,  imp (and (set_HIDDEN_2 b33) (set_HIDDEN_2 b34)) (imp (and (`forall b35,  imp (set_HIDDEN_2 b35) (iff (∈_TARSKI_2 b35 b33 ) ((sp3 b35 )))) (`forall b36,  imp (set_HIDDEN_2 b36) (iff (∈_TARSKI_2 b36 b34 ) ((sp3 b36 ))))) (=_HIDDEN_1 b33 b34 ))) ≔ 
begin
  abort;

// Redefinition

// Functor
symbol '1_XFAMILY_1 (v47:U) ≔ '1_XTUPLE_0_1 v47 ;

// Type Specification

opaque symbol TS_91_8 : Prf (`forall v47, imp (object_HIDDEN_1 v47) (set_HIDDEN_2 ('1_XFAMILY_1 v47 ))) ≔ 
begin
  abort;

// Redefinition

// Functor
symbol '2_XFAMILY_2 (v47:U) ≔ '2_XTUPLE_0_2 v47 ;

// Type Specification

opaque symbol TS_94_8 : Prf (`forall v47, imp (object_HIDDEN_1 v47) (set_HIDDEN_2 ('2_XFAMILY_2 v47 ))) ≔ 
begin
  abort;

// Redefinition

// Functor
symbol '1_3_XFAMILY_3 (v48:U) ≔ '1_3_XTUPLE_0_4 v48 ;

// Type Specification

opaque symbol TS_101_8 : Prf (`forall v48, imp (object_HIDDEN_1 v48) (set_HIDDEN_2 ('1_3_XFAMILY_3 v48 ))) ≔ 
begin
  abort;

// Redefinition

// Functor
symbol '2_3_XFAMILY_4 (v48:U) ≔ '2_3_XTUPLE_0_5 v48 ;

// Type Specification

opaque symbol TS_104_8 : Prf (`forall v48, imp (object_HIDDEN_1 v48) (set_HIDDEN_2 ('2_3_XFAMILY_4 v48 ))) ≔ 
begin
  abort;

// Redefinition

// Functor
symbol '1_4_XFAMILY_5 (v49:U) ≔ '1_4_XTUPLE_0_8 v49 ;

// Type Specification

opaque symbol TS_111_8 : Prf (`forall v49, imp (object_HIDDEN_1 v49) (set_HIDDEN_2 ('1_4_XFAMILY_5 v49 ))) ≔ 
begin
  abort;

// Redefinition

// Functor
symbol '2_4_XFAMILY_6 (v49:U) ≔ '2_4_XTUPLE_0_9 v49 ;

// Type Specification

opaque symbol TS_114_8 : Prf (`forall v49, imp (object_HIDDEN_1 v49) (set_HIDDEN_2 ('2_4_XFAMILY_6 v49 ))) ≔ 
begin
  abort;
