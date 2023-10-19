require open lp.predicatelogic;
require open lp.hidden;
require open lp.tarski;
require open lp.xboole_0;
require open lp.enumset1;

// Definition

// Functor
symbol bool_ZFMISC_1_1 : U → U ;

// SimplePredicativeDefiniens
symbol bool_ZFMISC_1_1-def (X:U) ≔ `forall Z, iff (∈_TARSKI_2 Z (bool_ZFMISC_1_1 X  )) (⊆_TARSKI_1 Z X );

// Type Specification

opaque symbol TS_71_6 : Prf (`forall X, imp (set_HIDDEN_2  X) (set_HIDDEN_2 (bool_ZFMISC_1_1 X ))) ≔ 
begin
  abort;

// Definition

// Functor
symbol Cartesian_ZFMISC_1_2 : U → U → U ;

// SimplePredicativeDefiniens
symbol Cartesian_ZFMISC_1_2-def (X1:U) (X2:U) ≔ `forall z, iff (∈_HIDDEN_3 z (Cartesian_ZFMISC_1_2 X1 X2  )) (`exists x, `exists y, and (and (∈_HIDDEN_3 x X1 ) (∈_HIDDEN_3 y X2 )) (=_HIDDEN_1 z ((pair_TARSKI_4 x y ) )));

// Type Specification

opaque symbol TS_96_6 : Prf (`forall X1, imp (set_HIDDEN_2  X1) (`forall X2, imp (set_HIDDEN_2  X2) (set_HIDDEN_2 (Cartesian_ZFMISC_1_2 X1 X2 )))) ≔ 
begin
  abort;

// Definition

// Functor

// SimpleEquationalDefiniens
symbol Cartesian_ZFMISC_1_3 (X1:U) (X2:U) (X3:U) ≔ (Cartesian_ZFMISC_1_2 (Cartesian_ZFMISC_1_2 X1 X2 ) X3 );

// Type Specification

opaque symbol TS_141_6 : Prf (`forall X1, imp (set_HIDDEN_2  X1) (`forall X2, imp (set_HIDDEN_2  X2) (`forall X3, imp (set_HIDDEN_2  X3) (set_HIDDEN_2 (Cartesian_ZFMISC_1_3 X1 X2 X3 ))))) ≔ 
begin
  abort;

// Definition

// Functor

// SimpleEquationalDefiniens
symbol Cartesian_ZFMISC_1_4 (X1:U) (X2:U) (X3:U) (X4:U) ≔ (Cartesian_ZFMISC_1_2 (Cartesian_ZFMISC_1_3 X1 X2 X3 ) X4 );

// Type Specification

opaque symbol TS_148_6 : Prf (`forall X1, imp (set_HIDDEN_2  X1) (`forall X2, imp (set_HIDDEN_2  X2) (`forall X3, imp (set_HIDDEN_2  X3) (`forall X4, imp (set_HIDDEN_2  X4) (set_HIDDEN_2 (Cartesian_ZFMISC_1_4 X1 X2 X3 X4 )))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_1 : Prf (=_XBOOLE_0_4 ((bool_ZFMISC_1_1 (∅_XBOOLE_0_1 ) ) )((enum_TARSKI_1 (∅_XBOOLE_0_1 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_2 : Prf (=_XBOOLE_0_4 ((union_TARSKI_3 (∅_XBOOLE_0_1 ) ) )((∅_XBOOLE_0_1 ) )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_3 : Prf (`forall x, `forall y, imp (⊆_TARSKI_1 ((enum_TARSKI_1 x ) )((enum_TARSKI_1 y ) )) (=_HIDDEN_1 x y )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_4 : Prf (`forall x, `forall y1, `forall y2, imp (=_XBOOLE_0_4 ((enum_TARSKI_1 x ) )((enum_TARSKI_2 y1 y2 ) )) (=_HIDDEN_1 x y1 )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_5 : Prf (`forall x, `forall y1, `forall y2, imp (=_XBOOLE_0_4 ((enum_TARSKI_1 x ) )((enum_TARSKI_2 y1 y2 ) )) (=_HIDDEN_1 y1 y2 )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_6 : Prf (`forall x1, `forall x2, `forall y1, `forall y2, imp (=_XBOOLE_0_4 ((enum_TARSKI_2 x1 x2 ) )((enum_TARSKI_2 y1 y2 ) )) (or (=_HIDDEN_1 x1 y1 ) (=_HIDDEN_1 x1 y2 ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_7 : Prf (`forall x, `forall y, ⊆_TARSKI_1 ((enum_TARSKI_1 x ) )((enum_TARSKI_2 x y ) )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_8 : Prf (`forall x, `forall y, imp (=_XBOOLE_0_4 ((∪_XBOOLE_0_2 (enum_TARSKI_1 x ) (enum_TARSKI_1 y ) ) )((enum_TARSKI_1 x ) )) (=_HIDDEN_1 x y )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_9 : Prf (`forall x, `forall y, =_XBOOLE_0_4 ((∪_XBOOLE_0_2 (enum_TARSKI_1 x ) (enum_TARSKI_2 x y ) ) )((enum_TARSKI_2 x y ) )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_10 : Prf (`forall x, `forall y, imp (misses_XBOOLE_0_1 ((enum_TARSKI_1 x ) )((enum_TARSKI_1 y ) )) (≠_HIDDEN_2 x y )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_11 : Prf (`forall x, `forall y, imp (≠_HIDDEN_2 x y ) (misses_XBOOLE_0_1 ((enum_TARSKI_1 x ) )((enum_TARSKI_1 y ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_12 : Prf (`forall x, `forall y, imp (=_XBOOLE_0_4 ((∩_XBOOLE_0_3 (enum_TARSKI_1 x ) (enum_TARSKI_1 y ) ) )((enum_TARSKI_1 x ) )) (=_HIDDEN_1 x y )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_13 : Prf (`forall x, `forall y, =_XBOOLE_0_4 ((∩_XBOOLE_0_3 (enum_TARSKI_1 x ) (enum_TARSKI_2 x y ) ) )((enum_TARSKI_1 x ) )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_14 : Prf (`forall x, `forall y, iff (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (enum_TARSKI_1 x ) (enum_TARSKI_1 y ) ) )((enum_TARSKI_1 x ) )) (≠_HIDDEN_2 x y )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_15 : Prf (`forall x, `forall y, imp (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (enum_TARSKI_1 x ) (enum_TARSKI_1 y ) ) )((∅_XBOOLE_0_1 ) )) (=_HIDDEN_1 x y )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_16 : Prf (`forall x, `forall y, =_XBOOLE_0_4 ((\_XBOOLE_0_4 (enum_TARSKI_1 x ) (enum_TARSKI_2 x y ) ) )((∅_XBOOLE_0_1 ) )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_17 : Prf (`forall x, `forall y, imp (≠_HIDDEN_2 x y ) (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (enum_TARSKI_2 x y ) (enum_TARSKI_1 y ) ) )((enum_TARSKI_1 x ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_18 : Prf (`forall x, `forall y, imp (⊆_TARSKI_1 ((enum_TARSKI_1 x ) )((enum_TARSKI_1 y ) )) (=_HIDDEN_1 x y )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_19 : Prf (`forall x, `forall y, `forall z, imp (⊆_TARSKI_1 ((enum_TARSKI_1 z ) )((enum_TARSKI_2 x y ) )) (or (=_HIDDEN_1 z x ) (=_HIDDEN_1 z y ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_20 : Prf (`forall x, `forall y, `forall z, imp (⊆_TARSKI_1 ((enum_TARSKI_2 x y ) )((enum_TARSKI_1 z ) )) (=_HIDDEN_1 x z )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_21 : Prf (`forall x, `forall y, `forall z, imp (⊆_TARSKI_1 ((enum_TARSKI_2 x y ) )((enum_TARSKI_1 z ) )) (=_XBOOLE_0_4 ((enum_TARSKI_2 x y ) )((enum_TARSKI_1 z ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_22 : Prf (`forall x1, `forall x2, `forall y1, `forall y2, imp (⊆_TARSKI_1 ((enum_TARSKI_2 x1 x2 ) )((enum_TARSKI_2 y1 y2 ) )) (or (=_HIDDEN_1 x1 y1 ) (=_HIDDEN_1 x1 y2 ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_23 : Prf (`forall x, `forall y, imp (≠_HIDDEN_2 x y ) (=_XBOOLE_0_4 ((⊕_XBOOLE_0_5 (enum_TARSKI_1 x ) (enum_TARSKI_1 y ) ) )((enum_TARSKI_2 x y ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_24 : Prf (`forall x, =_XBOOLE_0_4 ((bool_ZFMISC_1_1 (enum_TARSKI_1 x ) ) )((enum_TARSKI_2 (∅_XBOOLE_0_1 ) (enum_TARSKI_1 x ) ) )) ≔ 
begin
  abort;

// Reduction

opaque symbol Red_497_7 (x:U)  : Prf (=_HIDDEN_1(union_TARSKI_3 (enum_TARSKI_1 x ) ) x) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_25 : Prf (`forall x, =_HIDDEN_1 ((union_TARSKI_3 (enum_TARSKI_1 x ) ) )x ) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_26 : Prf (`forall x, `forall y, =_XBOOLE_0_4 ((union_TARSKI_3 (enum_TARSKI_2 (enum_TARSKI_1 x ) (enum_TARSKI_1 y ) ) ) )((enum_TARSKI_2 x y ) )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_28 : Prf (`forall x, `forall x1, `forall y, `forall y1, iff (∈_HIDDEN_3 ((pair_TARSKI_4 x y ) )((Cartesian_ZFMISC_1_2 (enum_TARSKI_1 x1 ) (enum_TARSKI_1 y1 ) ) )) (and (=_HIDDEN_1 x x1 ) (=_HIDDEN_1 y y1 ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_29 : Prf (`forall x, `forall y, =_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 (enum_TARSKI_1 x ) (enum_TARSKI_1 y ) ) )((enum_TARSKI_1 (pair_TARSKI_4 x y ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_30 : Prf (`forall x, `forall y, `forall z, and (=_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 (enum_TARSKI_1 x ) (enum_TARSKI_2 y z ) ) )((enum_TARSKI_2 (pair_TARSKI_4 x y ) (pair_TARSKI_4 x z ) ) )) (=_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 (enum_TARSKI_2 x y ) (enum_TARSKI_1 z ) ) )((enum_TARSKI_2 (pair_TARSKI_4 x z ) (pair_TARSKI_4 y z ) ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_31 : Prf (`forall x, `forall X, iff (⊆_TARSKI_1 ((enum_TARSKI_1 x ) )X ) (∈_HIDDEN_3 x X )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_32 : Prf (`forall x1, `forall x2, `forall Z, iff (⊆_TARSKI_1 ((enum_TARSKI_2 x1 x2 ) )Z ) (and (∈_HIDDEN_3 x1 Z ) (∈_HIDDEN_3 x2 Z ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_33 : Prf (`forall x, `forall Y, iff (⊆_TARSKI_1 Y ((enum_TARSKI_1 x ) )) (or (=_XBOOLE_0_4 Y ((∅_XBOOLE_0_1 ) )) (=_XBOOLE_0_4 Y ((enum_TARSKI_1 x ) )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_34 : Prf (`forall x, `forall X, `forall Y, imp (and (⊆_TARSKI_1 Y X ) (not (∈_HIDDEN_3 x Y ))) (⊆_TARSKI_1 Y ((\_XBOOLE_0_4 X (enum_TARSKI_1 x ) ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_35 : Prf (`forall x, `forall X, imp (and (≠_HIDDEN_2 X ((enum_TARSKI_1 x ) )) (≠_HIDDEN_2 X ((∅_XBOOLE_0_1 ) ))) (`exists y, and (∈_HIDDEN_3 y X ) (≠_HIDDEN_2 y x ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_36 : Prf (`forall x1, `forall x2, `forall Z, iff (⊆_TARSKI_1 Z ((enum_TARSKI_2 x1 x2 ) )) (or (or (or (=_XBOOLE_0_4 Z ((∅_XBOOLE_0_1 ) )) (=_XBOOLE_0_4 Z ((enum_TARSKI_1 x1 ) ))) (=_XBOOLE_0_4 Z ((enum_TARSKI_1 x2 ) ))) (=_XBOOLE_0_4 Z ((enum_TARSKI_2 x1 x2 ) )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_37 : Prf (`forall z, `forall X, `forall Y, imp (=_XBOOLE_0_4 ((enum_TARSKI_1 z ) )((∪_XBOOLE_0_2 X Y ) )) (or (or (and (=_XBOOLE_0_4 X ((enum_TARSKI_1 z ) )) (=_XBOOLE_0_4 Y ((enum_TARSKI_1 z ) ))) (and (=_XBOOLE_0_4 X ((∅_XBOOLE_0_1 ) )) (=_XBOOLE_0_4 Y ((enum_TARSKI_1 z ) )))) (and (=_XBOOLE_0_4 X ((enum_TARSKI_1 z ) )) (=_XBOOLE_0_4 Y ((∅_XBOOLE_0_1 ) ))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_38 : Prf (`forall z, `forall X, `forall Y, imp (and (=_XBOOLE_0_4 ((enum_TARSKI_1 z ) )((∪_XBOOLE_0_2 X Y ) )) (≠_HIDDEN_2 X Y )) (or (=_XBOOLE_0_4 X ((∅_XBOOLE_0_1 ) )) (=_XBOOLE_0_4 Y ((∅_XBOOLE_0_1 ) )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_39 : Prf (`forall x, `forall X, imp (⊆_TARSKI_1 ((∪_XBOOLE_0_2 (enum_TARSKI_1 x ) X ) )X ) (∈_HIDDEN_3 x X )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_40 : Prf (`forall x, `forall X, imp (∈_HIDDEN_3 x X ) (=_XBOOLE_0_4 ((∪_XBOOLE_0_2 (enum_TARSKI_1 x ) X ) )X )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_41 : Prf (`forall x, `forall y, `forall Z, imp (⊆_TARSKI_1 ((∪_XBOOLE_0_2 (enum_TARSKI_2 x y ) Z ) )Z ) (∈_HIDDEN_3 x Z )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_42 : Prf (`forall x, `forall y, `forall Z, imp (and (∈_HIDDEN_3 x Z ) (∈_HIDDEN_3 y Z )) (=_XBOOLE_0_4 ((∪_XBOOLE_0_2 (enum_TARSKI_2 x y ) Z ) )Z )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_43 : Prf (`forall x, `forall X, ≠_HIDDEN_2 ((∪_XBOOLE_0_2 (enum_TARSKI_1 x ) X ) )((∅_XBOOLE_0_1 ) )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_44 : Prf (`forall x, `forall y, `forall X, ≠_HIDDEN_2 ((∪_XBOOLE_0_2 (enum_TARSKI_2 x y ) X ) )((∅_XBOOLE_0_1 ) )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_45 : Prf (`forall x, `forall X, imp (=_XBOOLE_0_4 ((∩_XBOOLE_0_3 X (enum_TARSKI_1 x ) ) )((enum_TARSKI_1 x ) )) (∈_HIDDEN_3 x X )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_46 : Prf (`forall x, `forall X, imp (∈_HIDDEN_3 x X ) (=_XBOOLE_0_4 ((∩_XBOOLE_0_3 X (enum_TARSKI_1 x ) ) )((enum_TARSKI_1 x ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_47 : Prf (`forall x, `forall y, `forall Z, imp (and (∈_HIDDEN_3 x Z ) (∈_HIDDEN_3 y Z )) (=_XBOOLE_0_4 ((∩_XBOOLE_0_3 (enum_TARSKI_2 x y ) Z ) )((enum_TARSKI_2 x y ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_48 : Prf (`forall x, `forall X, imp (misses_XBOOLE_0_1 ((enum_TARSKI_1 x ) )X ) (not (∈_HIDDEN_3 x X ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_49 : Prf (`forall x, `forall y, `forall Z, imp (misses_XBOOLE_0_1 ((enum_TARSKI_2 x y ) )Z ) (not (∈_HIDDEN_3 x Z ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_50 : Prf (`forall x, `forall X, imp (not (∈_HIDDEN_3 x X )) (misses_XBOOLE_0_1 ((enum_TARSKI_1 x ) )X )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_51 : Prf (`forall x, `forall y, `forall Z, imp (and (not (∈_HIDDEN_3 x Z )) (not (∈_HIDDEN_3 y Z ))) (misses_XBOOLE_0_1 ((enum_TARSKI_2 x y ) )Z )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_52 : Prf (`forall x, `forall X, or (misses_XBOOLE_0_1 ((enum_TARSKI_1 x ) )X ) (=_XBOOLE_0_4 ((∩_XBOOLE_0_3 (enum_TARSKI_1 x ) X ) )((enum_TARSKI_1 x ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_53 : Prf (`forall x, `forall y, `forall X, imp (=_XBOOLE_0_4 ((∩_XBOOLE_0_3 (enum_TARSKI_2 x y ) X ) )((enum_TARSKI_1 x ) )) (or (not (∈_HIDDEN_3 y X )) (=_HIDDEN_1 x y ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_54 : Prf (`forall x, `forall y, `forall X, imp (and (∈_HIDDEN_3 x X ) (or (not (∈_HIDDEN_3 y X )) (=_HIDDEN_1 x y ))) (=_XBOOLE_0_4 ((∩_XBOOLE_0_3 (enum_TARSKI_2 x y ) X ) )((enum_TARSKI_1 x ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_55 : Prf (`forall x, `forall y, `forall X, imp (=_XBOOLE_0_4 ((∩_XBOOLE_0_3 (enum_TARSKI_2 x y ) X ) )((enum_TARSKI_2 x y ) )) (∈_HIDDEN_3 x X )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_56 : Prf (`forall x, `forall z, `forall X, iff (∈_HIDDEN_3 z ((\_XBOOLE_0_4 X (enum_TARSKI_1 x ) ) )) (and (∈_HIDDEN_3 z X ) (≠_HIDDEN_2 z x ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_57 : Prf (`forall x, `forall X, iff (=_XBOOLE_0_4 ((\_XBOOLE_0_4 X (enum_TARSKI_1 x ) ) )X ) (not (∈_HIDDEN_3 x X ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_58 : Prf (`forall x, `forall X, imp (=_XBOOLE_0_4 ((\_XBOOLE_0_4 X (enum_TARSKI_1 x ) ) )((∅_XBOOLE_0_1 ) )) (or (=_XBOOLE_0_4 X ((∅_XBOOLE_0_1 ) )) (=_XBOOLE_0_4 X ((enum_TARSKI_1 x ) )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_59 : Prf (`forall x, `forall X, iff (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (enum_TARSKI_1 x ) X ) )((enum_TARSKI_1 x ) )) (not (∈_HIDDEN_3 x X ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_60 : Prf (`forall x, `forall X, iff (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (enum_TARSKI_1 x ) X ) )((∅_XBOOLE_0_1 ) )) (∈_HIDDEN_3 x X )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_61 : Prf (`forall x, `forall X, or (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (enum_TARSKI_1 x ) X ) )((∅_XBOOLE_0_1 ) )) (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (enum_TARSKI_1 x ) X ) )((enum_TARSKI_1 x ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_62 : Prf (`forall x, `forall y, `forall X, iff (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (enum_TARSKI_2 x y ) X ) )((enum_TARSKI_1 x ) )) (and (not (∈_HIDDEN_3 x X )) (or (∈_HIDDEN_3 y X ) (=_HIDDEN_1 x y )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_63 : Prf (`forall x, `forall y, `forall X, iff (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (enum_TARSKI_2 x y ) X ) )((enum_TARSKI_2 x y ) )) (and (not (∈_HIDDEN_3 x X )) (not (∈_HIDDEN_3 y X )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_64 : Prf (`forall x, `forall y, `forall X, iff (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (enum_TARSKI_2 x y ) X ) )((∅_XBOOLE_0_1 ) )) (and (∈_HIDDEN_3 x X ) (∈_HIDDEN_3 y X ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_65 : Prf (`forall x, `forall y, `forall X, or (or (or (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (enum_TARSKI_2 x y ) X ) )((∅_XBOOLE_0_1 ) )) (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (enum_TARSKI_2 x y ) X ) )((enum_TARSKI_1 x ) ))) (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (enum_TARSKI_2 x y ) X ) )((enum_TARSKI_1 y ) ))) (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (enum_TARSKI_2 x y ) X ) )((enum_TARSKI_2 x y ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_66 : Prf (`forall x, `forall y, `forall X, iff (=_XBOOLE_0_4 ((\_XBOOLE_0_4 X (enum_TARSKI_2 x y ) ) )((∅_XBOOLE_0_1 ) )) (or (or (or (=_XBOOLE_0_4 X ((∅_XBOOLE_0_1 ) )) (=_XBOOLE_0_4 X ((enum_TARSKI_1 x ) ))) (=_XBOOLE_0_4 X ((enum_TARSKI_1 y ) ))) (=_XBOOLE_0_4 X ((enum_TARSKI_2 x y ) )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_67 : Prf (`forall A, `forall B, imp (⊆_TARSKI_1 A B ) (⊆_TARSKI_1 ((bool_ZFMISC_1_1 A ) )((bool_ZFMISC_1_1 B ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_68 : Prf (`forall A, ⊆_TARSKI_1 ((enum_TARSKI_1 A ) )((bool_ZFMISC_1_1 A ) )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_69 : Prf (`forall A, `forall B, ⊆_TARSKI_1 ((∪_XBOOLE_0_2 (bool_ZFMISC_1_1 A ) (bool_ZFMISC_1_1 B ) ) )((bool_ZFMISC_1_1 (∪_XBOOLE_0_2 A B ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_70 : Prf (`forall A, `forall B, imp (=_XBOOLE_0_4 ((∪_XBOOLE_0_2 (bool_ZFMISC_1_1 A ) (bool_ZFMISC_1_1 B ) ) )((bool_ZFMISC_1_1 (∪_XBOOLE_0_2 A B ) ) )) (are_c=-comparable_XBOOLE_0_3 A B )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_71 : Prf (`forall A, `forall B, =_XBOOLE_0_4 ((bool_ZFMISC_1_1 (∩_XBOOLE_0_3 A B ) ) )((∩_XBOOLE_0_3 (bool_ZFMISC_1_1 A ) (bool_ZFMISC_1_1 B ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_72 : Prf (`forall A, `forall B, ⊆_TARSKI_1 ((bool_ZFMISC_1_1 (\_XBOOLE_0_4 A B ) ) )((∪_XBOOLE_0_2 (enum_TARSKI_1 (∅_XBOOLE_0_1 ) ) (\_XBOOLE_0_4 (bool_ZFMISC_1_1 A ) (bool_ZFMISC_1_1 B ) ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_73 : Prf (`forall A, `forall B, ⊆_TARSKI_1 ((∪_XBOOLE_0_2 (bool_ZFMISC_1_1 (\_XBOOLE_0_4 A B ) ) (bool_ZFMISC_1_1 (\_XBOOLE_0_4 B A ) ) ) )((bool_ZFMISC_1_1 (⊕_XBOOLE_0_5 A B ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_74 : Prf (`forall A, `forall X, imp (∈_TARSKI_2 X A ) (⊆_TARSKI_1 X ((union_TARSKI_3 A ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_75 : Prf (`forall X, `forall Y, =_XBOOLE_0_4 ((union_TARSKI_3 (enum_TARSKI_2 X Y ) ) )((∪_XBOOLE_0_2 X Y ) )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_76 : Prf (`forall A, `forall Z, imp (`forall X, imp (∈_TARSKI_2 X A ) (⊆_TARSKI_1 X Z )) (⊆_TARSKI_1 ((union_TARSKI_3 A ) )Z )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_77 : Prf (`forall A, `forall B, imp (⊆_TARSKI_1 A B ) (⊆_TARSKI_1 ((union_TARSKI_3 A ) )((union_TARSKI_3 B ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_78 : Prf (`forall A, `forall B, =_XBOOLE_0_4 ((union_TARSKI_3 (∪_XBOOLE_0_2 A B ) ) )((∪_XBOOLE_0_2 (union_TARSKI_3 A ) (union_TARSKI_3 B ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_79 : Prf (`forall A, `forall B, ⊆_TARSKI_1 ((union_TARSKI_3 (∩_XBOOLE_0_3 A B ) ) )((∩_XBOOLE_0_3 (union_TARSKI_3 A ) (union_TARSKI_3 B ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_80 : Prf (`forall A, `forall B, imp (`forall X, imp (∈_TARSKI_2 X A ) (misses_XBOOLE_0_1 X B )) (misses_XBOOLE_0_1 ((union_TARSKI_3 A ) )B )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_81 : Prf (`forall A, =_XBOOLE_0_4 ((union_TARSKI_3 (bool_ZFMISC_1_1 A ) ) )A ) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_82 : Prf (`forall A, ⊆_TARSKI_1 A ((bool_ZFMISC_1_1 (union_TARSKI_3 A ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_83 : Prf (`forall A, `forall B, imp (`forall X, `forall Y, imp (and (and (≠_HIDDEN_2 X Y ) (∈_TARSKI_2 X ((∪_XBOOLE_0_2 A B ) ))) (∈_TARSKI_2 Y ((∪_XBOOLE_0_2 A B ) ))) (misses_XBOOLE_0_1 X Y )) (=_XBOOLE_0_4 ((union_TARSKI_3 (∩_XBOOLE_0_3 A B ) ) )((∩_XBOOLE_0_3 (union_TARSKI_3 A ) (union_TARSKI_3 B ) ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_84 : Prf (`forall z, `forall A, `forall X, `forall Y, imp (and (⊆_TARSKI_1 A ((Cartesian_ZFMISC_1_2 X Y ) )) (∈_HIDDEN_3 z A )) (`exists x, `exists y, and (and (∈_HIDDEN_3 x X ) (∈_HIDDEN_3 y Y )) (=_HIDDEN_1 z ((pair_TARSKI_4 x y ) )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_85 : Prf (`forall z, `forall X1, `forall X2, `forall Y1, `forall Y2, imp (∈_HIDDEN_3 z ((∩_XBOOLE_0_3 (Cartesian_ZFMISC_1_2 X1 Y1 ) (Cartesian_ZFMISC_1_2 X2 Y2 ) ) )) (`exists x, `exists y, and (and (=_HIDDEN_1 z ((pair_TARSKI_4 x y ) )) (∈_HIDDEN_3 x ((∩_XBOOLE_0_3 X1 X2 ) ))) (∈_HIDDEN_3 y ((∩_XBOOLE_0_3 Y1 Y2 ) )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_86 : Prf (`forall X, `forall Y, ⊆_TARSKI_1 ((Cartesian_ZFMISC_1_2 X Y ) )((bool_ZFMISC_1_1 (bool_ZFMISC_1_1 (∪_XBOOLE_0_2 X Y ) ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_87 : Prf (`forall X, `forall Y, `forall x, `forall y, iff (∈_HIDDEN_3 ((pair_TARSKI_4 x y ) )((Cartesian_ZFMISC_1_2 X Y ) )) (and (∈_HIDDEN_3 x X ) (∈_HIDDEN_3 y Y ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_88 : Prf (`forall x, `forall y, `forall X, `forall Y, imp (∈_HIDDEN_3 ((pair_TARSKI_4 x y ) )((Cartesian_ZFMISC_1_2 X Y ) )) (∈_HIDDEN_3 ((pair_TARSKI_4 y x ) )((Cartesian_ZFMISC_1_2 Y X ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_89 : Prf (`forall X1, `forall X2, `forall Y1, `forall Y2, imp (`forall x, `forall y, iff (∈_HIDDEN_3 ((pair_TARSKI_4 x y ) )((Cartesian_ZFMISC_1_2 X1 Y1 ) )) (∈_HIDDEN_3 ((pair_TARSKI_4 x y ) )((Cartesian_ZFMISC_1_2 X2 Y2 ) ))) (=_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 X1 Y1 ) )((Cartesian_ZFMISC_1_2 X2 Y2 ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_90 : Prf (`forall X, `forall Y, iff (=_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 X Y ) )((∅_XBOOLE_0_1 ) )) (or (=_XBOOLE_0_4 X ((∅_XBOOLE_0_1 ) )) (=_XBOOLE_0_4 Y ((∅_XBOOLE_0_1 ) )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_91 : Prf (`forall X, `forall Y, imp (and (and (≠_HIDDEN_2 X ((∅_XBOOLE_0_1 ) )) (≠_HIDDEN_2 Y ((∅_XBOOLE_0_1 ) ))) (=_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 X Y ) )((Cartesian_ZFMISC_1_2 Y X ) ))) (=_XBOOLE_0_4 X Y )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_92 : Prf (`forall X, `forall Y, imp (=_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 X X ) )((Cartesian_ZFMISC_1_2 Y Y ) )) (=_XBOOLE_0_4 X Y )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_93 : Prf (`forall X, `forall Y, imp (⊆_TARSKI_1 X ((Cartesian_ZFMISC_1_2 X Y ) )) (=_XBOOLE_0_4 X ((∅_XBOOLE_0_1 ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_94 : Prf (`forall X, `forall Y, `forall Z, imp (and (≠_HIDDEN_2 Z ((∅_XBOOLE_0_1 ) )) (or (⊆_TARSKI_1 ((Cartesian_ZFMISC_1_2 X Z ) )((Cartesian_ZFMISC_1_2 Y Z ) )) (⊆_TARSKI_1 ((Cartesian_ZFMISC_1_2 Z X ) )((Cartesian_ZFMISC_1_2 Z Y ) )))) (⊆_TARSKI_1 X Y )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_95 : Prf (`forall X, `forall Y, `forall Z, imp (⊆_TARSKI_1 X Y ) (and (⊆_TARSKI_1 ((Cartesian_ZFMISC_1_2 X Z ) )((Cartesian_ZFMISC_1_2 Y Z ) )) (⊆_TARSKI_1 ((Cartesian_ZFMISC_1_2 Z X ) )((Cartesian_ZFMISC_1_2 Z Y ) )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_96 : Prf (`forall X1, `forall X2, `forall Y1, `forall Y2, imp (and (⊆_TARSKI_1 X1 Y1 ) (⊆_TARSKI_1 X2 Y2 )) (⊆_TARSKI_1 ((Cartesian_ZFMISC_1_2 X1 X2 ) )((Cartesian_ZFMISC_1_2 Y1 Y2 ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_97 : Prf (`forall X, `forall Y, `forall Z, and (=_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 (∪_XBOOLE_0_2 X Y ) Z ) )((∪_XBOOLE_0_2 (Cartesian_ZFMISC_1_2 X Z ) (Cartesian_ZFMISC_1_2 Y Z ) ) )) (=_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 Z (∪_XBOOLE_0_2 X Y ) ) )((∪_XBOOLE_0_2 (Cartesian_ZFMISC_1_2 Z X ) (Cartesian_ZFMISC_1_2 Z Y ) ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_98 : Prf (`forall X1, `forall X2, `forall Y1, `forall Y2, =_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 (∪_XBOOLE_0_2 X1 X2 ) (∪_XBOOLE_0_2 Y1 Y2 ) ) )((∪_XBOOLE_0_2 (∪_XBOOLE_0_2 (∪_XBOOLE_0_2 (Cartesian_ZFMISC_1_2 X1 Y1 ) (Cartesian_ZFMISC_1_2 X1 Y2 ) ) (Cartesian_ZFMISC_1_2 X2 Y1 ) ) (Cartesian_ZFMISC_1_2 X2 Y2 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_99 : Prf (`forall X, `forall Y, `forall Z, and (=_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 (∩_XBOOLE_0_3 X Y ) Z ) )((∩_XBOOLE_0_3 (Cartesian_ZFMISC_1_2 X Z ) (Cartesian_ZFMISC_1_2 Y Z ) ) )) (=_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 Z (∩_XBOOLE_0_3 X Y ) ) )((∩_XBOOLE_0_3 (Cartesian_ZFMISC_1_2 Z X ) (Cartesian_ZFMISC_1_2 Z Y ) ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_100 : Prf (`forall X1, `forall X2, `forall Y1, `forall Y2, =_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 (∩_XBOOLE_0_3 X1 X2 ) (∩_XBOOLE_0_3 Y1 Y2 ) ) )((∩_XBOOLE_0_3 (Cartesian_ZFMISC_1_2 X1 Y1 ) (Cartesian_ZFMISC_1_2 X2 Y2 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_101 : Prf (`forall A, `forall B, `forall X, `forall Y, imp (and (⊆_TARSKI_1 A X ) (⊆_TARSKI_1 B Y )) (=_XBOOLE_0_4 ((∩_XBOOLE_0_3 (Cartesian_ZFMISC_1_2 A Y ) (Cartesian_ZFMISC_1_2 X B ) ) )((Cartesian_ZFMISC_1_2 A B ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_102 : Prf (`forall X, `forall Y, `forall Z, and (=_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 (\_XBOOLE_0_4 X Y ) Z ) )((\_XBOOLE_0_4 (Cartesian_ZFMISC_1_2 X Z ) (Cartesian_ZFMISC_1_2 Y Z ) ) )) (=_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 Z (\_XBOOLE_0_4 X Y ) ) )((\_XBOOLE_0_4 (Cartesian_ZFMISC_1_2 Z X ) (Cartesian_ZFMISC_1_2 Z Y ) ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_103 : Prf (`forall X1, `forall X2, `forall Y1, `forall Y2, =_XBOOLE_0_4 ((\_XBOOLE_0_4 (Cartesian_ZFMISC_1_2 X1 X2 ) (Cartesian_ZFMISC_1_2 Y1 Y2 ) ) )((∪_XBOOLE_0_2 (Cartesian_ZFMISC_1_2 (\_XBOOLE_0_4 X1 Y1 ) X2 ) (Cartesian_ZFMISC_1_2 X1 (\_XBOOLE_0_4 X2 Y2 ) ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_104 : Prf (`forall X1, `forall X2, `forall Y1, `forall Y2, imp (or (misses_XBOOLE_0_1 X1 X2 ) (misses_XBOOLE_0_1 Y1 Y2 )) (misses_XBOOLE_0_1 ((Cartesian_ZFMISC_1_2 X1 Y1 ) )((Cartesian_ZFMISC_1_2 X2 Y2 ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_105 : Prf (`forall x, `forall y, `forall z, `forall Y, iff (∈_HIDDEN_3 ((pair_TARSKI_4 x y ) )((Cartesian_ZFMISC_1_2 (enum_TARSKI_1 z ) Y ) )) (and (=_HIDDEN_1 x z ) (∈_HIDDEN_3 y Y ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_106 : Prf (`forall x, `forall y, `forall z, `forall X, iff (∈_HIDDEN_3 ((pair_TARSKI_4 x y ) )((Cartesian_ZFMISC_1_2 X (enum_TARSKI_1 z ) ) )) (and (∈_HIDDEN_3 x X ) (=_HIDDEN_1 y z ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_107 : Prf (`forall x, `forall X, imp (≠_HIDDEN_2 X ((∅_XBOOLE_0_1 ) )) (and (≠_HIDDEN_2 ((Cartesian_ZFMISC_1_2 (enum_TARSKI_1 x ) X ) )((∅_XBOOLE_0_1 ) )) (≠_HIDDEN_2 ((Cartesian_ZFMISC_1_2 X (enum_TARSKI_1 x ) ) )((∅_XBOOLE_0_1 ) )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_108 : Prf (`forall x, `forall y, `forall X, `forall Y, imp (≠_HIDDEN_2 x y ) (and (misses_XBOOLE_0_1 ((Cartesian_ZFMISC_1_2 (enum_TARSKI_1 x ) X ) )((Cartesian_ZFMISC_1_2 (enum_TARSKI_1 y ) Y ) )) (misses_XBOOLE_0_1 ((Cartesian_ZFMISC_1_2 X (enum_TARSKI_1 x ) ) )((Cartesian_ZFMISC_1_2 Y (enum_TARSKI_1 y ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_109 : Prf (`forall x, `forall y, `forall X, and (=_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 (enum_TARSKI_2 x y ) X ) )((∪_XBOOLE_0_2 (Cartesian_ZFMISC_1_2 (enum_TARSKI_1 x ) X ) (Cartesian_ZFMISC_1_2 (enum_TARSKI_1 y ) X ) ) )) (=_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 X (enum_TARSKI_2 x y ) ) )((∪_XBOOLE_0_2 (Cartesian_ZFMISC_1_2 X (enum_TARSKI_1 x ) ) (Cartesian_ZFMISC_1_2 X (enum_TARSKI_1 y ) ) ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_110 : Prf (`forall X1, `forall X2, `forall Y1, `forall Y2, imp (and (and (≠_HIDDEN_2 X1 ((∅_XBOOLE_0_1 ) )) (≠_HIDDEN_2 Y1 ((∅_XBOOLE_0_1 ) ))) (=_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 X1 Y1 ) )((Cartesian_ZFMISC_1_2 X2 Y2 ) ))) (and (=_XBOOLE_0_4 X1 X2 ) (=_XBOOLE_0_4 Y1 Y2 ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_111 : Prf (`forall X, `forall Y, imp (or (⊆_TARSKI_1 X ((Cartesian_ZFMISC_1_2 X Y ) )) (⊆_TARSKI_1 X ((Cartesian_ZFMISC_1_2 Y X ) ))) (=_XBOOLE_0_4 X ((∅_XBOOLE_0_1 ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_112 : Prf (`forall N, `exists M, and (and (and (∈_TARSKI_2 N M ) (`forall X, `forall Y, imp (and (∈_TARSKI_2 X M ) (⊆_TARSKI_1 Y X )) (∈_TARSKI_2 Y M ))) (`forall X, imp (∈_TARSKI_2 X M ) (∈_TARSKI_2 ((bool_ZFMISC_1_1 X ) )M ))) (`forall X, imp (⊆_TARSKI_1 X M ) (or (are_equipotent_TARSKI_3 X M ) (∈_TARSKI_2 X M )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_113 : Prf (`forall e, `forall X1, `forall X2, `forall Y1, `forall Y2, imp (and (∈_HIDDEN_3 e ((Cartesian_ZFMISC_1_2 X1 Y1 ) )) (∈_HIDDEN_3 e ((Cartesian_ZFMISC_1_2 X2 Y2 ) ))) (∈_HIDDEN_3 e ((Cartesian_ZFMISC_1_2 (∩_XBOOLE_0_3 X1 X2 ) (∩_XBOOLE_0_3 Y1 Y2 ) ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_114 : Prf (`forall X1, `forall X2, `forall Y1, `forall Y2, imp (and (⊆_TARSKI_1 ((Cartesian_ZFMISC_1_2 X1 X2 ) )((Cartesian_ZFMISC_1_2 Y1 Y2 ) )) (≠_HIDDEN_2 ((Cartesian_ZFMISC_1_2 X1 X2 ) )((∅_XBOOLE_0_1 ) ))) (and (⊆_TARSKI_1 X1 Y1 ) (⊆_TARSKI_1 X2 Y2 ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_115 : Prf (`forall A, `forall B, `forall C, `forall D, imp (or (⊆_TARSKI_1 ((Cartesian_ZFMISC_1_2 A B ) )((Cartesian_ZFMISC_1_2 C D ) )) (⊆_TARSKI_1 ((Cartesian_ZFMISC_1_2 B A ) )((Cartesian_ZFMISC_1_2 D C ) ))) (⊆_TARSKI_1 B D )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_116 : Prf (`forall x, `forall X, imp (∈_HIDDEN_3 x X ) (=_XBOOLE_0_4 ((∪_XBOOLE_0_2 (\_XBOOLE_0_4 X (enum_TARSKI_1 x ) ) (enum_TARSKI_1 x ) ) )X )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_117 : Prf (`forall x, `forall X, imp (not (∈_HIDDEN_3 x X )) (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (∪_XBOOLE_0_2 X (enum_TARSKI_1 x ) ) (enum_TARSKI_1 x ) ) )X )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_118 : Prf (`forall x, `forall y, `forall z, `forall Z, iff (⊆_TARSKI_1 Z ((enum_ENUMSET1_1 x y z ) )) (or (or (or (or (or (or (or (=_XBOOLE_0_4 Z ((∅_XBOOLE_0_1 ) )) (=_XBOOLE_0_4 Z ((enum_TARSKI_1 x ) ))) (=_XBOOLE_0_4 Z ((enum_TARSKI_1 y ) ))) (=_XBOOLE_0_4 Z ((enum_TARSKI_1 z ) ))) (=_XBOOLE_0_4 Z ((enum_TARSKI_2 x y ) ))) (=_XBOOLE_0_4 Z ((enum_TARSKI_2 y z ) ))) (=_XBOOLE_0_4 Z ((enum_TARSKI_2 x z ) ))) (=_XBOOLE_0_4 Z ((enum_ENUMSET1_1 x y z ) )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_119 : Prf (`forall N, `forall M, `forall X1, `forall X2, `forall Y1, `forall Y2, imp (and (⊆_TARSKI_1 N ((Cartesian_ZFMISC_1_2 X1 Y1 ) )) (⊆_TARSKI_1 M ((Cartesian_ZFMISC_1_2 X2 Y2 ) ))) (⊆_TARSKI_1 ((∪_XBOOLE_0_2 N M ) )((Cartesian_ZFMISC_1_2 (∪_XBOOLE_0_2 X1 X2 ) (∪_XBOOLE_0_2 Y1 Y2 ) ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_120 : Prf (`forall x, `forall y, `forall X, imp (and (not (∈_HIDDEN_3 x X )) (not (∈_HIDDEN_3 y X ))) (=_XBOOLE_0_4 X ((\_XBOOLE_0_4 X (enum_TARSKI_2 x y ) ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_121 : Prf (`forall x, `forall y, `forall X, imp (and (not (∈_HIDDEN_3 x X )) (not (∈_HIDDEN_3 y X ))) (=_XBOOLE_0_4 X ((\_XBOOLE_0_4 (∪_XBOOLE_0_2 X (enum_TARSKI_2 x y ) ) (enum_TARSKI_2 x y ) ) ))) ≔ 
begin
  abort;

// Definition

// Predicate

// SimplePredicativeDefiniens
symbol are_mutually_distinct_ZFMISC_1_1 (x1:U) (x2:U) (x3:U) ≔ and (and (≠_HIDDEN_2 x1 x2 ) (≠_HIDDEN_2 x1 x3 )) (≠_HIDDEN_2 x2 x3 );

// Definition

// Predicate

// SimplePredicativeDefiniens
symbol are_mutually_distinct_ZFMISC_1_2 (x1:U) (x2:U) (x3:U) (x4:U) ≔ and (and (and (and (and (≠_HIDDEN_2 x1 x2 ) (≠_HIDDEN_2 x1 x3 )) (≠_HIDDEN_2 x1 x4 )) (≠_HIDDEN_2 x2 x3 )) (≠_HIDDEN_2 x2 x4 )) (≠_HIDDEN_2 x3 x4 );

// Definition

// Predicate

// SimplePredicativeDefiniens
symbol are_mutually_distinct_ZFMISC_1_3 (x1:U) (x2:U) (x3:U) (x4:U) (x5:U) ≔ and (and (and (and (and (and (and (and (and (≠_HIDDEN_2 x1 x2 ) (≠_HIDDEN_2 x1 x3 )) (≠_HIDDEN_2 x1 x4 )) (≠_HIDDEN_2 x1 x5 )) (≠_HIDDEN_2 x2 x3 )) (≠_HIDDEN_2 x2 x4 )) (≠_HIDDEN_2 x2 x5 )) (≠_HIDDEN_2 x3 x4 )) (≠_HIDDEN_2 x3 x5 )) (≠_HIDDEN_2 x4 x5 );

// Definition

// Predicate

// SimplePredicativeDefiniens
symbol are_mutually_distinct_ZFMISC_1_4 (x1:U) (x2:U) (x3:U) (x4:U) (x5:U) (x6:U) ≔ and (and (and (and (and (and (and (and (and (and (and (and (and (and (≠_HIDDEN_2 x1 x2 ) (≠_HIDDEN_2 x1 x3 )) (≠_HIDDEN_2 x1 x4 )) (≠_HIDDEN_2 x1 x5 )) (≠_HIDDEN_2 x1 x6 )) (≠_HIDDEN_2 x2 x3 )) (≠_HIDDEN_2 x2 x4 )) (≠_HIDDEN_2 x2 x5 )) (≠_HIDDEN_2 x2 x6 )) (≠_HIDDEN_2 x3 x4 )) (≠_HIDDEN_2 x3 x5 )) (≠_HIDDEN_2 x3 x6 )) (≠_HIDDEN_2 x4 x5 )) (≠_HIDDEN_2 x4 x6 )) (≠_HIDDEN_2 x5 x6 );

// Definition

// Predicate

// SimplePredicativeDefiniens
symbol are_mutually_distinct_ZFMISC_1_5 (x1:U) (x2:U) (x3:U) (x4:U) (x5:U) (x6:U) (x7:U) ≔ and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (≠_HIDDEN_2 x1 x2 ) (≠_HIDDEN_2 x1 x3 )) (≠_HIDDEN_2 x1 x4 )) (≠_HIDDEN_2 x1 x5 )) (≠_HIDDEN_2 x1 x6 )) (≠_HIDDEN_2 x1 x7 )) (≠_HIDDEN_2 x2 x3 )) (≠_HIDDEN_2 x2 x4 )) (≠_HIDDEN_2 x2 x5 )) (≠_HIDDEN_2 x2 x6 )) (≠_HIDDEN_2 x2 x7 )) (≠_HIDDEN_2 x3 x4 )) (≠_HIDDEN_2 x3 x5 )) (≠_HIDDEN_2 x3 x6 )) (≠_HIDDEN_2 x3 x7 )) (≠_HIDDEN_2 x4 x5 )) (≠_HIDDEN_2 x4 x6 )) (≠_HIDDEN_2 x4 x7 )) (≠_HIDDEN_2 x5 x6 )) (≠_HIDDEN_2 x5 x7 )) (≠_HIDDEN_2 x6 x7 );

opaque symbol Th_ZFMISC_1_122 : Prf (`forall x1, `forall x2, `forall y1, `forall y2, =_XBOOLE_0_4 ((Cartesian_ZFMISC_1_2 (enum_TARSKI_2 x1 x2 ) (enum_TARSKI_2 y1 y2 ) ) )((enum_ENUMSET1_2 (pair_TARSKI_4 x1 y1 ) (pair_TARSKI_4 x1 y2 ) (pair_TARSKI_4 x2 y1 ) (pair_TARSKI_4 x2 y2 ) ) )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_123 : Prf (`forall x, `forall y, `forall A, imp (≠_HIDDEN_2 x y ) (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (∪_XBOOLE_0_2 A (enum_TARSKI_1 x ) ) (enum_TARSKI_1 y ) ) )((∪_XBOOLE_0_2 (\_XBOOLE_0_4 A (enum_TARSKI_1 y ) ) (enum_TARSKI_1 x ) ) ))) ≔ 
begin
  abort;

// Definition

// Attribute

// SimplePredicativeDefiniens
symbol trivial_ZFMISC_1_1 (X:U) ≔ `forall x, `forall y, imp (and (∈_HIDDEN_3 x X ) (∈_HIDDEN_3 y X )) (=_HIDDEN_1 x y );

// Cluster

// Conditional

opaque symbol Cl_2136_9 : Prf (`forall a, imp (object_HIDDEN_1 a) (imp (empty_XBOOLE_0_1 a) (trivial_ZFMISC_1_1 a))) ≔ 
begin
  abort;

// Cluster

// Conditional

opaque symbol Cl_2141_9 : Prf (`forall a, imp (object_HIDDEN_1 a) (imp (not (trivial_ZFMISC_1_1 a)) (not (empty_XBOOLE_0_1 a)))) ≔ 
begin
  abort;

// Cluster

// Functorial

opaque symbol Cl_2147_9 (x:U)  : Prf ((trivial_ZFMISC_1_1 (enum_TARSKI_1 x ))) ≔ 
begin
  abort;

// Cluster

// Existential

opaque symbol Cl_2160_8 : Prf (`exists a, and (object_HIDDEN_1 a) (and (trivial_ZFMISC_1_1 a) (not (empty_XBOOLE_0_1 a)))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_124 : Prf (`forall A, `forall B, `forall C, `forall p, imp (and (and (⊆_TARSKI_1 A B ) (=_XBOOLE_0_4 ((∩_XBOOLE_0_3 B C ) )((enum_TARSKI_1 p ) ))) (∈_HIDDEN_3 p A )) (=_XBOOLE_0_4 ((∩_XBOOLE_0_3 A C ) )((enum_TARSKI_1 p ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_125 : Prf (`forall p, `forall A, `forall B, `forall C, imp (and (and (⊆_TARSKI_1 ((∩_XBOOLE_0_3 A B ) )((enum_TARSKI_1 p ) )) (∈_HIDDEN_3 p C )) (misses_XBOOLE_0_1 C B )) (misses_XBOOLE_0_1 ((∪_XBOOLE_0_2 A C ) )B )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_126 : Prf (`forall A, `forall B, imp (`forall x, `forall y, imp (and (∈_TARSKI_2 x A ) (∈_TARSKI_2 y B )) (misses_XBOOLE_0_1 x y )) (misses_XBOOLE_0_1 ((union_TARSKI_3 A ) )((union_TARSKI_3 B ) ))) ≔ 
begin
  abort;

// Cluster

// Functorial

opaque symbol Cl_2226_9 (X:U) (Y:U)  : Prf ((empty_XBOOLE_0_1 (Cartesian_ZFMISC_1_2 X Y ))) ≔ 
begin
  abort;

// Cluster

// Functorial

opaque symbol Cl_2232_9 (X:U) (Y:U)  : Prf ((empty_XBOOLE_0_1 (Cartesian_ZFMISC_1_2 X Y ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_127 : Prf (`forall A, `forall B, not (∈_TARSKI_2 A ((Cartesian_ZFMISC_1_2 A B ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_128 : Prf (`forall x, `forall B, imp (=_HIDDEN_1 B ((pair_TARSKI_4 x (enum_TARSKI_1 x ) ) )) (∈_TARSKI_2 B ((Cartesian_ZFMISC_1_2 (enum_TARSKI_1 x ) B ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_129 : Prf (`forall A, `forall B, imp (∈_TARSKI_2 B ((Cartesian_ZFMISC_1_2 A B ) )) (`exists x, and (∈_HIDDEN_3 x A ) (=_HIDDEN_1 B ((pair_TARSKI_4 x (enum_TARSKI_1 x ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_130 : Prf (`forall A, `forall B, imp (and (⊆_TARSKI_1 B A ) ((trivial_ZFMISC_1_1 A))) ((trivial_ZFMISC_1_1 B))) ≔ 
begin
  abort;

// Cluster

// Existential

opaque symbol Cl_2290_9 : Prf (`exists a, and (object_HIDDEN_1 a) ((not (trivial_ZFMISC_1_1 a)))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_131 : Prf (`forall X, imp (and (not (empty_XBOOLE_0_1 X)) (trivial_ZFMISC_1_1 X)) (`exists x, =_XBOOLE_0_4 X ((enum_TARSKI_1 x ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_132 : Prf (`forall x, `forall X, imp (∈_TARSKI_2 x X ) (=_XBOOLE_0_4 X ((enum_TARSKI_1 x ) ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_133 : Prf (`forall a, `forall b, `forall c, `forall X, imp (and (and (∈_TARSKI_2 a X ) (∈_TARSKI_2 b X )) (∈_TARSKI_2 c X )) (⊆_TARSKI_1 ((enum_ENUMSET1_1 a b c ) )X )) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_134 : Prf (`forall x, `forall y, `forall X, imp (∈_HIDDEN_3 ((pair_TARSKI_4 x y ) )X ) (and (∈_HIDDEN_3 x ((union_TARSKI_3 (union_TARSKI_3 X ) ) )) (∈_HIDDEN_3 y ((union_TARSKI_3 (union_TARSKI_3 X ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_135 : Prf (`forall x, `forall Y, `forall X, imp (⊆_TARSKI_1 X ((∪_XBOOLE_0_2 Y (enum_TARSKI_1 x ) ) )) (or (∈_HIDDEN_3 x X ) (⊆_TARSKI_1 X Y ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_136 : Prf (`forall x, `forall y, `forall X, iff (∈_HIDDEN_3 x ((∪_XBOOLE_0_2 X (enum_TARSKI_1 y ) ) )) (or (∈_HIDDEN_3 x X ) (=_HIDDEN_1 x y ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_137 : Prf (`forall x, `forall Y, `forall X, iff (⊆_TARSKI_1 ((∪_XBOOLE_0_2 X (enum_TARSKI_1 x ) ) )Y ) (and (∈_HIDDEN_3 x Y ) (⊆_TARSKI_1 X Y ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_138 : Prf (`forall a, `forall A, `forall B, imp (and (⊆_TARSKI_1 A B ) (⊆_TARSKI_1 B ((∪_XBOOLE_0_2 A (enum_TARSKI_1 a ) ) ))) (or (=_XBOOLE_0_4 ((∪_XBOOLE_0_2 A (enum_TARSKI_1 a ) ) )B ) (=_XBOOLE_0_4 A B ))) ≔ 
begin
  abort;

// Cluster

// Functorial

opaque symbol Cl_2398_8 (A:U) (B:U)  : Prf ((trivial_ZFMISC_1_1 (Cartesian_ZFMISC_1_2 A B ))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_139 : Prf (`forall X, iff ((not (trivial_ZFMISC_1_1 X))) (`forall x, (not (empty_XBOOLE_0_1 (\_XBOOLE_0_4 X (enum_TARSKI_1 x ) ))))) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_140 : Prf (`forall X, ≠_HIDDEN_2 ((enum_TARSKI_1 X ) )X ) ≔ 
begin
  abort;

opaque symbol Th_ZFMISC_1_141 : Prf (`forall X, ≠_HIDDEN_2 ((bool_ZFMISC_1_1 X ) )X ) ≔ 
begin
  abort;
