require open lp.predicatelogic;
require open lp.hidden;
require open lp.tarski;
require open lp.xboole_0;

// Definition

// Functor
symbol enum_ENUMSET1_1 : U → U → U → U ;

// SimplePredicativeDefiniens
symbol enum_ENUMSET1_1-def (x1:U) (x2:U) (x3:U) ≔ `forall x, iff (∈_HIDDEN_3 x (enum_ENUMSET1_1 x1 x2 x3  )) (or (or (=_HIDDEN_1 x x1 ) (=_HIDDEN_1 x x2 )) (=_HIDDEN_1 x x3 ));

// Type Specification

opaque symbol TS_43_6 : Prf (`forall x1, imp (object_HIDDEN_1  x1) (`forall x2, imp (object_HIDDEN_1  x2) (`forall x3, imp (object_HIDDEN_1  x3) (set_HIDDEN_2 (enum_ENUMSET1_1 x1 x2 x3 ))))) ≔ 
begin
  abort;

// Definition

// Functor
symbol enum_ENUMSET1_2 : U → U → U → U → U ;

// SimplePredicativeDefiniens
symbol enum_ENUMSET1_2-def (x1:U) (x2:U) (x3:U) (x4:U) ≔ `forall x, iff (∈_HIDDEN_3 x (enum_ENUMSET1_2 x1 x2 x3 x4  )) (or (or (or (=_HIDDEN_1 x x1 ) (=_HIDDEN_1 x x2 )) (=_HIDDEN_1 x x3 )) (=_HIDDEN_1 x x4 ));

// Type Specification

opaque symbol TS_65_6 : Prf (`forall x1, imp (object_HIDDEN_1  x1) (`forall x2, imp (object_HIDDEN_1  x2) (`forall x3, imp (object_HIDDEN_1  x3) (`forall x4, imp (object_HIDDEN_1  x4) (set_HIDDEN_2 (enum_ENUMSET1_2 x1 x2 x3 x4 )))))) ≔ 
begin
  abort;

// Definition

// Functor
symbol enum_ENUMSET1_3 : U → U → U → U → U → U ;

// SimplePredicativeDefiniens
symbol enum_ENUMSET1_3-def (x1:U) (x2:U) (x3:U) (x4:U) (x5:U) ≔ `forall x, iff (∈_HIDDEN_3 x (enum_ENUMSET1_3 x1 x2 x3 x4 x5  )) (or (or (or (or (=_HIDDEN_1 x x1 ) (=_HIDDEN_1 x x2 )) (=_HIDDEN_1 x x3 )) (=_HIDDEN_1 x x4 )) (=_HIDDEN_1 x x5 ));

// Type Specification

opaque symbol TS_87_6 : Prf (`forall x1, imp (object_HIDDEN_1  x1) (`forall x2, imp (object_HIDDEN_1  x2) (`forall x3, imp (object_HIDDEN_1  x3) (`forall x4, imp (object_HIDDEN_1  x4) (`forall x5, imp (object_HIDDEN_1  x5) (set_HIDDEN_2 (enum_ENUMSET1_3 x1 x2 x3 x4 x5 ))))))) ≔ 
begin
  abort;

// Definition

// Functor
symbol enum_ENUMSET1_4 : U → U → U → U → U → U → U ;

// SimplePredicativeDefiniens
symbol enum_ENUMSET1_4-def (x1:U) (x2:U) (x3:U) (x4:U) (x5:U) (x6:U) ≔ `forall x, iff (∈_HIDDEN_3 x (enum_ENUMSET1_4 x1 x2 x3 x4 x5 x6  )) (or (or (or (or (or (=_HIDDEN_1 x x1 ) (=_HIDDEN_1 x x2 )) (=_HIDDEN_1 x x3 )) (=_HIDDEN_1 x x4 )) (=_HIDDEN_1 x x5 )) (=_HIDDEN_1 x x6 ));

// Type Specification

opaque symbol TS_109_6 : Prf (`forall x1, imp (object_HIDDEN_1  x1) (`forall x2, imp (object_HIDDEN_1  x2) (`forall x3, imp (object_HIDDEN_1  x3) (`forall x4, imp (object_HIDDEN_1  x4) (`forall x5, imp (object_HIDDEN_1  x5) (`forall x6, imp (object_HIDDEN_1  x6) (set_HIDDEN_2 (enum_ENUMSET1_4 x1 x2 x3 x4 x5 x6 )))))))) ≔ 
begin
  abort;

// Definition

// Functor
symbol enum_ENUMSET1_5 : U → U → U → U → U → U → U → U ;

// SimplePredicativeDefiniens
symbol enum_ENUMSET1_5-def (x1:U) (x2:U) (x3:U) (x4:U) (x5:U) (x6:U) (x7:U) ≔ `forall x, iff (∈_HIDDEN_3 x (enum_ENUMSET1_5 x1 x2 x3 x4 x5 x6 x7  )) (or (or (or (or (or (or (=_HIDDEN_1 x x1 ) (=_HIDDEN_1 x x2 )) (=_HIDDEN_1 x x3 )) (=_HIDDEN_1 x x4 )) (=_HIDDEN_1 x x5 )) (=_HIDDEN_1 x x6 )) (=_HIDDEN_1 x x7 ));

// Type Specification

opaque symbol TS_132_6 : Prf (`forall x1, imp (object_HIDDEN_1  x1) (`forall x2, imp (object_HIDDEN_1  x2) (`forall x3, imp (object_HIDDEN_1  x3) (`forall x4, imp (object_HIDDEN_1  x4) (`forall x5, imp (object_HIDDEN_1  x5) (`forall x6, imp (object_HIDDEN_1  x6) (`forall x7, imp (object_HIDDEN_1  x7) (set_HIDDEN_2 (enum_ENUMSET1_5 x1 x2 x3 x4 x5 x6 x7 ))))))))) ≔ 
begin
  abort;

// Definition

// Functor
symbol enum_ENUMSET1_6 : U → U → U → U → U → U → U → U → U ;

// SimplePredicativeDefiniens
symbol enum_ENUMSET1_6-def (x1:U) (x2:U) (x3:U) (x4:U) (x5:U) (x6:U) (x7:U) (x8:U) ≔ `forall x, iff (∈_HIDDEN_3 x (enum_ENUMSET1_6 x1 x2 x3 x4 x5 x6 x7 x8  )) (or (or (or (or (or (or (or (=_HIDDEN_1 x x1 ) (=_HIDDEN_1 x x2 )) (=_HIDDEN_1 x x3 )) (=_HIDDEN_1 x x4 )) (=_HIDDEN_1 x x5 )) (=_HIDDEN_1 x x6 )) (=_HIDDEN_1 x x7 )) (=_HIDDEN_1 x x8 ));

// Type Specification

opaque symbol TS_157_6 : Prf (`forall x1, imp (object_HIDDEN_1  x1) (`forall x2, imp (object_HIDDEN_1  x2) (`forall x3, imp (object_HIDDEN_1  x3) (`forall x4, imp (object_HIDDEN_1  x4) (`forall x5, imp (object_HIDDEN_1  x5) (`forall x6, imp (object_HIDDEN_1  x6) (`forall x7, imp (object_HIDDEN_1  x7) (`forall x8, imp (object_HIDDEN_1  x8) (set_HIDDEN_2 (enum_ENUMSET1_6 x1 x2 x3 x4 x5 x6 x7 x8 )))))))))) ≔ 
begin
  abort;

// Definition

// Functor
symbol enum_ENUMSET1_7 : U → U → U → U → U → U → U → U → U → U ;

// SimplePredicativeDefiniens
symbol enum_ENUMSET1_7-def (x1:U) (x2:U) (x3:U) (x4:U) (x5:U) (x6:U) (x7:U) (x8:U) (x9:U) ≔ `forall x, iff (∈_HIDDEN_3 x (enum_ENUMSET1_7 x1 x2 x3 x4 x5 x6 x7 x8 x9  )) (or (or (or (or (or (or (or (or (=_HIDDEN_1 x x1 ) (=_HIDDEN_1 x x2 )) (=_HIDDEN_1 x x3 )) (=_HIDDEN_1 x x4 )) (=_HIDDEN_1 x x5 )) (=_HIDDEN_1 x x6 )) (=_HIDDEN_1 x x7 )) (=_HIDDEN_1 x x8 )) (=_HIDDEN_1 x x9 ));

// Type Specification

opaque symbol TS_182_6 : Prf (`forall x1, imp (object_HIDDEN_1  x1) (`forall x2, imp (object_HIDDEN_1  x2) (`forall x3, imp (object_HIDDEN_1  x3) (`forall x4, imp (object_HIDDEN_1  x4) (`forall x5, imp (object_HIDDEN_1  x5) (`forall x6, imp (object_HIDDEN_1  x6) (`forall x7, imp (object_HIDDEN_1  x7) (`forall x8, imp (object_HIDDEN_1  x8) (`forall x9, imp (object_HIDDEN_1  x9) (set_HIDDEN_2 (enum_ENUMSET1_7 x1 x2 x3 x4 x5 x6 x7 x8 x9 ))))))))))) ≔ 
begin
  abort;

// Definition

// Functor
symbol enum_ENUMSET1_8 : U → U → U → U → U → U → U → U → U → U → U ;

// SimplePredicativeDefiniens
symbol enum_ENUMSET1_8-def (x1:U) (x2:U) (x3:U) (x4:U) (x5:U) (x6:U) (x7:U) (x8:U) (x9:U) (x10:U) ≔ `forall x, iff (∈_HIDDEN_3 x (enum_ENUMSET1_8 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10  )) (or (or (or (or (or (or (or (or (or (=_HIDDEN_1 x x1 ) (=_HIDDEN_1 x x2 )) (=_HIDDEN_1 x x3 )) (=_HIDDEN_1 x x4 )) (=_HIDDEN_1 x x5 )) (=_HIDDEN_1 x x6 )) (=_HIDDEN_1 x x7 )) (=_HIDDEN_1 x x8 )) (=_HIDDEN_1 x x9 )) (=_HIDDEN_1 x x10 ));

// Type Specification

opaque symbol TS_207_6 : Prf (`forall x1, imp (object_HIDDEN_1  x1) (`forall x2, imp (object_HIDDEN_1  x2) (`forall x3, imp (object_HIDDEN_1  x3) (`forall x4, imp (object_HIDDEN_1  x4) (`forall x5, imp (object_HIDDEN_1  x5) (`forall x6, imp (object_HIDDEN_1  x6) (`forall x7, imp (object_HIDDEN_1  x7) (`forall x8, imp (object_HIDDEN_1  x8) (`forall x9, imp (object_HIDDEN_1  x9) (`forall x10, imp (object_HIDDEN_1  x10) (set_HIDDEN_2 (enum_ENUMSET1_8 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 )))))))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_1 : Prf (`forall x1, `forall x2, =_XBOOLE_0_4 ((enum_TARSKI_2 x1 x2 ) )((∪_XBOOLE_0_2 (enum_TARSKI_1 x1 ) (enum_TARSKI_1 x2 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_2 : Prf (`forall x1, `forall x2, `forall x3, =_XBOOLE_0_4 ((enum_ENUMSET1_1 x1 x2 x3 ) )((∪_XBOOLE_0_2 (enum_TARSKI_1 x1 ) (enum_TARSKI_2 x2 x3 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_3 : Prf (`forall x1, `forall x2, `forall x3, =_XBOOLE_0_4 ((enum_ENUMSET1_1 x1 x2 x3 ) )((∪_XBOOLE_0_2 (enum_TARSKI_2 x1 x2 ) (enum_TARSKI_1 x3 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_4 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, =_XBOOLE_0_4 ((enum_ENUMSET1_2 x1 x2 x3 x4 ) )((∪_XBOOLE_0_2 (enum_TARSKI_1 x1 ) (enum_ENUMSET1_1 x2 x3 x4 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_5 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, =_XBOOLE_0_4 ((enum_ENUMSET1_2 x1 x2 x3 x4 ) )((∪_XBOOLE_0_2 (enum_TARSKI_2 x1 x2 ) (enum_TARSKI_2 x3 x4 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_6 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, =_XBOOLE_0_4 ((enum_ENUMSET1_2 x1 x2 x3 x4 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_1 x1 x2 x3 ) (enum_TARSKI_1 x4 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_7 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, =_XBOOLE_0_4 ((enum_ENUMSET1_3 x1 x2 x3 x4 x5 ) )((∪_XBOOLE_0_2 (enum_TARSKI_1 x1 ) (enum_ENUMSET1_2 x2 x3 x4 x5 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_8 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, =_XBOOLE_0_4 ((enum_ENUMSET1_3 x1 x2 x3 x4 x5 ) )((∪_XBOOLE_0_2 (enum_TARSKI_2 x1 x2 ) (enum_ENUMSET1_1 x3 x4 x5 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_9 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, =_XBOOLE_0_4 ((enum_ENUMSET1_3 x1 x2 x3 x4 x5 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_1 x1 x2 x3 ) (enum_TARSKI_2 x4 x5 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_10 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, =_XBOOLE_0_4 ((enum_ENUMSET1_3 x1 x2 x3 x4 x5 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_2 x1 x2 x3 x4 ) (enum_TARSKI_1 x5 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_11 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, `forall x6, =_XBOOLE_0_4 ((enum_ENUMSET1_4 x1 x2 x3 x4 x5 x6 ) )((∪_XBOOLE_0_2 (enum_TARSKI_1 x1 ) (enum_ENUMSET1_3 x2 x3 x4 x5 x6 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_12 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, `forall x6, =_XBOOLE_0_4 ((enum_ENUMSET1_4 x1 x2 x3 x4 x5 x6 ) )((∪_XBOOLE_0_2 (enum_TARSKI_2 x1 x2 ) (enum_ENUMSET1_2 x3 x4 x5 x6 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_13 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, `forall x6, =_XBOOLE_0_4 ((enum_ENUMSET1_4 x1 x2 x3 x4 x5 x6 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_1 x1 x2 x3 ) (enum_ENUMSET1_1 x4 x5 x6 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_14 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, `forall x6, =_XBOOLE_0_4 ((enum_ENUMSET1_4 x1 x2 x3 x4 x5 x6 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_2 x1 x2 x3 x4 ) (enum_TARSKI_2 x5 x6 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_15 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, `forall x6, =_XBOOLE_0_4 ((enum_ENUMSET1_4 x1 x2 x3 x4 x5 x6 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_3 x1 x2 x3 x4 x5 ) (enum_TARSKI_1 x6 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_16 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, `forall x6, `forall x7, =_XBOOLE_0_4 ((enum_ENUMSET1_5 x1 x2 x3 x4 x5 x6 x7 ) )((∪_XBOOLE_0_2 (enum_TARSKI_1 x1 ) (enum_ENUMSET1_4 x2 x3 x4 x5 x6 x7 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_17 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, `forall x6, `forall x7, =_XBOOLE_0_4 ((enum_ENUMSET1_5 x1 x2 x3 x4 x5 x6 x7 ) )((∪_XBOOLE_0_2 (enum_TARSKI_2 x1 x2 ) (enum_ENUMSET1_3 x3 x4 x5 x6 x7 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_18 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, `forall x6, `forall x7, =_XBOOLE_0_4 ((enum_ENUMSET1_5 x1 x2 x3 x4 x5 x6 x7 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_1 x1 x2 x3 ) (enum_ENUMSET1_2 x4 x5 x6 x7 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_19 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, `forall x6, `forall x7, =_XBOOLE_0_4 ((enum_ENUMSET1_5 x1 x2 x3 x4 x5 x6 x7 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_2 x1 x2 x3 x4 ) (enum_ENUMSET1_1 x5 x6 x7 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_20 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, `forall x6, `forall x7, =_XBOOLE_0_4 ((enum_ENUMSET1_5 x1 x2 x3 x4 x5 x6 x7 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_3 x1 x2 x3 x4 x5 ) (enum_TARSKI_2 x6 x7 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_21 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, `forall x6, `forall x7, =_XBOOLE_0_4 ((enum_ENUMSET1_5 x1 x2 x3 x4 x5 x6 x7 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_4 x1 x2 x3 x4 x5 x6 ) (enum_TARSKI_1 x7 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_22 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, `forall x6, `forall x7, `forall x8, =_XBOOLE_0_4 ((enum_ENUMSET1_6 x1 x2 x3 x4 x5 x6 x7 x8 ) )((∪_XBOOLE_0_2 (enum_TARSKI_1 x1 ) (enum_ENUMSET1_5 x2 x3 x4 x5 x6 x7 x8 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_23 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, `forall x6, `forall x7, `forall x8, =_XBOOLE_0_4 ((enum_ENUMSET1_6 x1 x2 x3 x4 x5 x6 x7 x8 ) )((∪_XBOOLE_0_2 (enum_TARSKI_2 x1 x2 ) (enum_ENUMSET1_4 x3 x4 x5 x6 x7 x8 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_24 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, `forall x6, `forall x7, `forall x8, =_XBOOLE_0_4 ((enum_ENUMSET1_6 x1 x2 x3 x4 x5 x6 x7 x8 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_1 x1 x2 x3 ) (enum_ENUMSET1_3 x4 x5 x6 x7 x8 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_25 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, `forall x6, `forall x7, `forall x8, =_XBOOLE_0_4 ((enum_ENUMSET1_6 x1 x2 x3 x4 x5 x6 x7 x8 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_2 x1 x2 x3 x4 ) (enum_ENUMSET1_2 x5 x6 x7 x8 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_26 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, `forall x6, `forall x7, `forall x8, =_XBOOLE_0_4 ((enum_ENUMSET1_6 x1 x2 x3 x4 x5 x6 x7 x8 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_3 x1 x2 x3 x4 x5 ) (enum_ENUMSET1_1 x6 x7 x8 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_27 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, `forall x6, `forall x7, `forall x8, =_XBOOLE_0_4 ((enum_ENUMSET1_6 x1 x2 x3 x4 x5 x6 x7 x8 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_4 x1 x2 x3 x4 x5 x6 ) (enum_TARSKI_2 x7 x8 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_28 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, `forall x6, `forall x7, `forall x8, =_XBOOLE_0_4 ((enum_ENUMSET1_6 x1 x2 x3 x4 x5 x6 x7 x8 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_5 x1 x2 x3 x4 x5 x6 x7 ) (enum_TARSKI_1 x8 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_29 : Prf (`forall x1, =_XBOOLE_0_4 ((enum_TARSKI_2 x1 x1 ) )((enum_TARSKI_1 x1 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_30 : Prf (`forall x1, `forall x2, =_XBOOLE_0_4 ((enum_ENUMSET1_1 x1 x1 x2 ) )((enum_TARSKI_2 x1 x2 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_31 : Prf (`forall x1, `forall x2, `forall x3, =_XBOOLE_0_4 ((enum_ENUMSET1_2 x1 x1 x2 x3 ) )((enum_ENUMSET1_1 x1 x2 x3 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_32 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, =_XBOOLE_0_4 ((enum_ENUMSET1_3 x1 x1 x2 x3 x4 ) )((enum_ENUMSET1_2 x1 x2 x3 x4 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_33 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, =_XBOOLE_0_4 ((enum_ENUMSET1_4 x1 x1 x2 x3 x4 x5 ) )((enum_ENUMSET1_3 x1 x2 x3 x4 x5 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_34 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, `forall x6, =_XBOOLE_0_4 ((enum_ENUMSET1_5 x1 x1 x2 x3 x4 x5 x6 ) )((enum_ENUMSET1_4 x1 x2 x3 x4 x5 x6 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_35 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, `forall x6, `forall x7, =_XBOOLE_0_4 ((enum_ENUMSET1_6 x1 x1 x2 x3 x4 x5 x6 x7 ) )((enum_ENUMSET1_5 x1 x2 x3 x4 x5 x6 x7 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_36 : Prf (`forall x1, =_XBOOLE_0_4 ((enum_ENUMSET1_1 x1 x1 x1 ) )((enum_TARSKI_1 x1 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_37 : Prf (`forall x1, `forall x2, =_XBOOLE_0_4 ((enum_ENUMSET1_2 x1 x1 x1 x2 ) )((enum_TARSKI_2 x1 x2 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_38 : Prf (`forall x1, `forall x2, `forall x3, =_XBOOLE_0_4 ((enum_ENUMSET1_3 x1 x1 x1 x2 x3 ) )((enum_ENUMSET1_1 x1 x2 x3 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_39 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, =_XBOOLE_0_4 ((enum_ENUMSET1_4 x1 x1 x1 x2 x3 x4 ) )((enum_ENUMSET1_2 x1 x2 x3 x4 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_40 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, =_XBOOLE_0_4 ((enum_ENUMSET1_5 x1 x1 x1 x2 x3 x4 x5 ) )((enum_ENUMSET1_3 x1 x2 x3 x4 x5 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_41 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, `forall x6, =_XBOOLE_0_4 ((enum_ENUMSET1_6 x1 x1 x1 x2 x3 x4 x5 x6 ) )((enum_ENUMSET1_4 x1 x2 x3 x4 x5 x6 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_42 : Prf (`forall x1, =_XBOOLE_0_4 ((enum_ENUMSET1_2 x1 x1 x1 x1 ) )((enum_TARSKI_1 x1 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_43 : Prf (`forall x1, `forall x2, =_XBOOLE_0_4 ((enum_ENUMSET1_3 x1 x1 x1 x1 x2 ) )((enum_TARSKI_2 x1 x2 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_44 : Prf (`forall x1, `forall x2, `forall x3, =_XBOOLE_0_4 ((enum_ENUMSET1_4 x1 x1 x1 x1 x2 x3 ) )((enum_ENUMSET1_1 x1 x2 x3 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_45 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, =_XBOOLE_0_4 ((enum_ENUMSET1_5 x1 x1 x1 x1 x2 x3 x4 ) )((enum_ENUMSET1_2 x1 x2 x3 x4 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_46 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, =_XBOOLE_0_4 ((enum_ENUMSET1_6 x1 x1 x1 x1 x2 x3 x4 x5 ) )((enum_ENUMSET1_3 x1 x2 x3 x4 x5 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_47 : Prf (`forall x1, =_XBOOLE_0_4 ((enum_ENUMSET1_3 x1 x1 x1 x1 x1 ) )((enum_TARSKI_1 x1 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_48 : Prf (`forall x1, `forall x2, =_XBOOLE_0_4 ((enum_ENUMSET1_4 x1 x1 x1 x1 x1 x2 ) )((enum_TARSKI_2 x1 x2 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_49 : Prf (`forall x1, `forall x2, `forall x3, =_XBOOLE_0_4 ((enum_ENUMSET1_5 x1 x1 x1 x1 x1 x2 x3 ) )((enum_ENUMSET1_1 x1 x2 x3 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_50 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, =_XBOOLE_0_4 ((enum_ENUMSET1_6 x1 x1 x1 x1 x1 x2 x3 x4 ) )((enum_ENUMSET1_2 x1 x2 x3 x4 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_51 : Prf (`forall x1, =_XBOOLE_0_4 ((enum_ENUMSET1_4 x1 x1 x1 x1 x1 x1 ) )((enum_TARSKI_1 x1 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_52 : Prf (`forall x1, `forall x2, =_XBOOLE_0_4 ((enum_ENUMSET1_5 x1 x1 x1 x1 x1 x1 x2 ) )((enum_TARSKI_2 x1 x2 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_53 : Prf (`forall x1, `forall x2, `forall x3, =_XBOOLE_0_4 ((enum_ENUMSET1_6 x1 x1 x1 x1 x1 x1 x2 x3 ) )((enum_ENUMSET1_1 x1 x2 x3 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_54 : Prf (`forall x1, =_XBOOLE_0_4 ((enum_ENUMSET1_5 x1 x1 x1 x1 x1 x1 x1 ) )((enum_TARSKI_1 x1 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_55 : Prf (`forall x1, `forall x2, =_XBOOLE_0_4 ((enum_ENUMSET1_6 x1 x1 x1 x1 x1 x1 x1 x2 ) )((enum_TARSKI_2 x1 x2 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_56 : Prf (`forall x1, =_XBOOLE_0_4 ((enum_ENUMSET1_6 x1 x1 x1 x1 x1 x1 x1 x1 ) )((enum_TARSKI_1 x1 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_57 : Prf (`forall x1, `forall x2, `forall x3, =_XBOOLE_0_4 ((enum_ENUMSET1_1 x1 x2 x3 ) )((enum_ENUMSET1_1 x1 x3 x2 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_58 : Prf (`forall x1, `forall x2, `forall x3, =_XBOOLE_0_4 ((enum_ENUMSET1_1 x1 x2 x3 ) )((enum_ENUMSET1_1 x2 x1 x3 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_59 : Prf (`forall x1, `forall x2, `forall x3, =_XBOOLE_0_4 ((enum_ENUMSET1_1 x1 x2 x3 ) )((enum_ENUMSET1_1 x2 x3 x1 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_60 : Prf (`forall x1, `forall x2, `forall x3, =_XBOOLE_0_4 ((enum_ENUMSET1_1 x1 x2 x3 ) )((enum_ENUMSET1_1 x3 x2 x1 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_61 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, =_XBOOLE_0_4 ((enum_ENUMSET1_2 x1 x2 x3 x4 ) )((enum_ENUMSET1_2 x1 x2 x4 x3 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_62 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, =_XBOOLE_0_4 ((enum_ENUMSET1_2 x1 x2 x3 x4 ) )((enum_ENUMSET1_2 x1 x3 x2 x4 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_63 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, =_XBOOLE_0_4 ((enum_ENUMSET1_2 x1 x2 x3 x4 ) )((enum_ENUMSET1_2 x1 x3 x4 x2 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_64 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, =_XBOOLE_0_4 ((enum_ENUMSET1_2 x1 x2 x3 x4 ) )((enum_ENUMSET1_2 x1 x4 x3 x2 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_65 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, =_XBOOLE_0_4 ((enum_ENUMSET1_2 x1 x2 x3 x4 ) )((enum_ENUMSET1_2 x2 x1 x3 x4 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_66 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, =_XBOOLE_0_4 ((enum_ENUMSET1_2 x1 x2 x3 x4 ) )((enum_ENUMSET1_2 x2 x1 x4 x3 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_67 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, =_XBOOLE_0_4 ((enum_ENUMSET1_2 x1 x2 x3 x4 ) )((enum_ENUMSET1_2 x2 x3 x1 x4 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_68 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, =_XBOOLE_0_4 ((enum_ENUMSET1_2 x1 x2 x3 x4 ) )((enum_ENUMSET1_2 x2 x3 x4 x1 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_69 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, =_XBOOLE_0_4 ((enum_ENUMSET1_2 x1 x2 x3 x4 ) )((enum_ENUMSET1_2 x2 x4 x1 x3 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_70 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, =_XBOOLE_0_4 ((enum_ENUMSET1_2 x1 x2 x3 x4 ) )((enum_ENUMSET1_2 x2 x4 x3 x1 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_71 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, =_XBOOLE_0_4 ((enum_ENUMSET1_2 x1 x2 x3 x4 ) )((enum_ENUMSET1_2 x3 x2 x1 x4 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_72 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, =_XBOOLE_0_4 ((enum_ENUMSET1_2 x1 x2 x3 x4 ) )((enum_ENUMSET1_2 x3 x2 x4 x1 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_73 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, =_XBOOLE_0_4 ((enum_ENUMSET1_2 x1 x2 x3 x4 ) )((enum_ENUMSET1_2 x3 x4 x1 x2 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_74 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, =_XBOOLE_0_4 ((enum_ENUMSET1_2 x1 x2 x3 x4 ) )((enum_ENUMSET1_2 x3 x4 x2 x1 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_75 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, =_XBOOLE_0_4 ((enum_ENUMSET1_2 x1 x2 x3 x4 ) )((enum_ENUMSET1_2 x4 x2 x3 x1 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_76 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, =_XBOOLE_0_4 ((enum_ENUMSET1_2 x1 x2 x3 x4 ) )((enum_ENUMSET1_2 x4 x3 x2 x1 ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_77 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, `forall x6, `forall x7, `forall x8, `forall x9, =_XBOOLE_0_4 ((enum_ENUMSET1_7 x1 x2 x3 x4 x5 x6 x7 x8 x9 ) )((∪_XBOOLE_0_2 (enum_TARSKI_1 x1 ) (enum_ENUMSET1_6 x2 x3 x4 x5 x6 x7 x8 x9 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_78 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, `forall x6, `forall x7, `forall x8, `forall x9, =_XBOOLE_0_4 ((enum_ENUMSET1_7 x1 x2 x3 x4 x5 x6 x7 x8 x9 ) )((∪_XBOOLE_0_2 (enum_TARSKI_2 x1 x2 ) (enum_ENUMSET1_5 x3 x4 x5 x6 x7 x8 x9 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_79 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, `forall x6, `forall x7, `forall x8, `forall x9, =_XBOOLE_0_4 ((enum_ENUMSET1_7 x1 x2 x3 x4 x5 x6 x7 x8 x9 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_1 x1 x2 x3 ) (enum_ENUMSET1_4 x4 x5 x6 x7 x8 x9 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_80 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, `forall x6, `forall x7, `forall x8, `forall x9, =_XBOOLE_0_4 ((enum_ENUMSET1_7 x1 x2 x3 x4 x5 x6 x7 x8 x9 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_2 x1 x2 x3 x4 ) (enum_ENUMSET1_3 x5 x6 x7 x8 x9 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_81 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, `forall x6, `forall x7, `forall x8, `forall x9, =_XBOOLE_0_4 ((enum_ENUMSET1_7 x1 x2 x3 x4 x5 x6 x7 x8 x9 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_3 x1 x2 x3 x4 x5 ) (enum_ENUMSET1_2 x6 x7 x8 x9 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_82 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, `forall x6, `forall x7, `forall x8, `forall x9, =_XBOOLE_0_4 ((enum_ENUMSET1_7 x1 x2 x3 x4 x5 x6 x7 x8 x9 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_4 x1 x2 x3 x4 x5 x6 ) (enum_ENUMSET1_1 x7 x8 x9 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_83 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, `forall x6, `forall x7, `forall x8, `forall x9, =_XBOOLE_0_4 ((enum_ENUMSET1_7 x1 x2 x3 x4 x5 x6 x7 x8 x9 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_5 x1 x2 x3 x4 x5 x6 x7 ) (enum_TARSKI_2 x8 x9 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_84 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, `forall x6, `forall x7, `forall x8, `forall x9, =_XBOOLE_0_4 ((enum_ENUMSET1_7 x1 x2 x3 x4 x5 x6 x7 x8 x9 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_6 x1 x2 x3 x4 x5 x6 x7 x8 ) (enum_TARSKI_1 x9 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_85 : Prf (`forall x1, `forall x2, `forall x3, `forall x4, `forall x5, `forall x6, `forall x7, `forall x8, `forall x9, `forall x10, =_XBOOLE_0_4 ((enum_ENUMSET1_8 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_7 x1 x2 x3 x4 x5 x6 x7 x8 x9 ) (enum_TARSKI_1 x10 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_86 : Prf (`forall x, `forall y, `forall z, imp (and (≠_HIDDEN_2 x y ) (≠_HIDDEN_2 x z )) (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (enum_ENUMSET1_1 x y z ) (enum_TARSKI_1 x ) ) )((enum_TARSKI_2 y z ) ))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_87 : Prf (`forall x1, `forall x2, `forall x3, =_XBOOLE_0_4 ((∪_XBOOLE_0_2 (enum_TARSKI_2 x2 x1 ) (enum_TARSKI_2 x3 x1 ) ) )((enum_ENUMSET1_1 x1 x2 x3 ) )) ≔ 
begin
  abort;
