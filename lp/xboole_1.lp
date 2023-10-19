require open lp.predicatelogic;
require open lp.hidden;
require open lp.tarski;
require open lp.xboole_0;

opaque symbol Th_XBOOLE_1_1 : Prf (`forall X, `forall Y, `forall Z, imp (and (⊆_TARSKI_1 X Y ) (⊆_TARSKI_1 Y Z )) (⊆_TARSKI_1 X Z )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_2 : Prf (`forall X, ⊆_TARSKI_1 ((∅_XBOOLE_0_1 ) )X ) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_3 : Prf (`forall X, imp (⊆_TARSKI_1 X ((∅_XBOOLE_0_1 ) )) (=_XBOOLE_0_4 X ((∅_XBOOLE_0_1 ) ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_4 : Prf (`forall X, `forall Y, `forall Z, =_XBOOLE_0_4 ((∪_XBOOLE_0_2 (∪_XBOOLE_0_2 X Y ) Z ) )((∪_XBOOLE_0_2 X (∪_XBOOLE_0_2 Y Z ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_5 : Prf (`forall X, `forall Y, `forall Z, =_XBOOLE_0_4 ((∪_XBOOLE_0_2 (∪_XBOOLE_0_2 X Y ) Z ) )((∪_XBOOLE_0_2 (∪_XBOOLE_0_2 X Z ) (∪_XBOOLE_0_2 Y Z ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_6 : Prf (`forall X, `forall Y, =_XBOOLE_0_4 ((∪_XBOOLE_0_2 X (∪_XBOOLE_0_2 X Y ) ) )((∪_XBOOLE_0_2 X Y ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_7 : Prf (`forall X, `forall Y, ⊆_TARSKI_1 X ((∪_XBOOLE_0_2 X Y ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_8 : Prf (`forall X, `forall Y, `forall Z, imp (and (⊆_TARSKI_1 X Z ) (⊆_TARSKI_1 Y Z )) (⊆_TARSKI_1 ((∪_XBOOLE_0_2 X Y ) )Z )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_9 : Prf (`forall X, `forall Y, `forall Z, imp (⊆_TARSKI_1 X Y ) (⊆_TARSKI_1 ((∪_XBOOLE_0_2 X Z ) )((∪_XBOOLE_0_2 Y Z ) ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_10 : Prf (`forall X, `forall Y, `forall Z, imp (⊆_TARSKI_1 X Y ) (⊆_TARSKI_1 X ((∪_XBOOLE_0_2 Z Y ) ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_11 : Prf (`forall X, `forall Y, `forall Z, imp (⊆_TARSKI_1 ((∪_XBOOLE_0_2 X Y ) )Z ) (⊆_TARSKI_1 X Z )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_12 : Prf (`forall X, `forall Y, imp (⊆_TARSKI_1 X Y ) (=_XBOOLE_0_4 ((∪_XBOOLE_0_2 X Y ) )Y )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_13 : Prf (`forall X, `forall Y, `forall Z, `forall V, imp (and (⊆_TARSKI_1 X Y ) (⊆_TARSKI_1 Z V )) (⊆_TARSKI_1 ((∪_XBOOLE_0_2 X Z ) )((∪_XBOOLE_0_2 Y V ) ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_14 : Prf (`forall X, `forall Y, `forall Z, imp (and (and (⊆_TARSKI_1 Y X ) (⊆_TARSKI_1 Z X )) (`forall V, imp (and (⊆_TARSKI_1 Y V ) (⊆_TARSKI_1 Z V )) (⊆_TARSKI_1 X V ))) (=_XBOOLE_0_4 X ((∪_XBOOLE_0_2 Y Z ) ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_15 : Prf (`forall X, `forall Y, imp (=_XBOOLE_0_4 ((∪_XBOOLE_0_2 X Y ) )((∅_XBOOLE_0_1 ) )) (=_XBOOLE_0_4 X ((∅_XBOOLE_0_1 ) ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_16 : Prf (`forall X, `forall Y, `forall Z, =_XBOOLE_0_4 ((∩_XBOOLE_0_3 (∩_XBOOLE_0_3 X Y ) Z ) )((∩_XBOOLE_0_3 X (∩_XBOOLE_0_3 Y Z ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_17 : Prf (`forall X, `forall Y, ⊆_TARSKI_1 ((∩_XBOOLE_0_3 X Y ) )X ) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_18 : Prf (`forall X, `forall Y, `forall Z, imp (⊆_TARSKI_1 X ((∩_XBOOLE_0_3 Y Z ) )) (⊆_TARSKI_1 X Y )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_19 : Prf (`forall X, `forall Y, `forall Z, imp (and (⊆_TARSKI_1 Z X ) (⊆_TARSKI_1 Z Y )) (⊆_TARSKI_1 Z ((∩_XBOOLE_0_3 X Y ) ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_20 : Prf (`forall X, `forall Y, `forall Z, imp (and (and (⊆_TARSKI_1 X Y ) (⊆_TARSKI_1 X Z )) (`forall V, imp (and (⊆_TARSKI_1 V Y ) (⊆_TARSKI_1 V Z )) (⊆_TARSKI_1 V X ))) (=_XBOOLE_0_4 X ((∩_XBOOLE_0_3 Y Z ) ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_21 : Prf (`forall X, `forall Y, =_XBOOLE_0_4 ((∩_XBOOLE_0_3 X (∪_XBOOLE_0_2 X Y ) ) )X ) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_22 : Prf (`forall X, `forall Y, =_XBOOLE_0_4 ((∪_XBOOLE_0_2 X (∩_XBOOLE_0_3 X Y ) ) )X ) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_23 : Prf (`forall X, `forall Y, `forall Z, =_XBOOLE_0_4 ((∩_XBOOLE_0_3 X (∪_XBOOLE_0_2 Y Z ) ) )((∪_XBOOLE_0_2 (∩_XBOOLE_0_3 X Y ) (∩_XBOOLE_0_3 X Z ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_24 : Prf (`forall X, `forall Y, `forall Z, =_XBOOLE_0_4 ((∪_XBOOLE_0_2 X (∩_XBOOLE_0_3 Y Z ) ) )((∩_XBOOLE_0_3 (∪_XBOOLE_0_2 X Y ) (∪_XBOOLE_0_2 X Z ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_25 : Prf (`forall X, `forall Y, `forall Z, =_XBOOLE_0_4 ((∪_XBOOLE_0_2 (∪_XBOOLE_0_2 (∩_XBOOLE_0_3 X Y ) (∩_XBOOLE_0_3 Y Z ) ) (∩_XBOOLE_0_3 Z X ) ) )((∩_XBOOLE_0_3 (∩_XBOOLE_0_3 (∪_XBOOLE_0_2 X Y ) (∪_XBOOLE_0_2 Y Z ) ) (∪_XBOOLE_0_2 Z X ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_26 : Prf (`forall X, `forall Y, `forall Z, imp (⊆_TARSKI_1 X Y ) (⊆_TARSKI_1 ((∩_XBOOLE_0_3 X Z ) )((∩_XBOOLE_0_3 Y Z ) ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_27 : Prf (`forall X, `forall Y, `forall Z, `forall V, imp (and (⊆_TARSKI_1 X Y ) (⊆_TARSKI_1 Z V )) (⊆_TARSKI_1 ((∩_XBOOLE_0_3 X Z ) )((∩_XBOOLE_0_3 Y V ) ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_28 : Prf (`forall X, `forall Y, imp (⊆_TARSKI_1 X Y ) (=_XBOOLE_0_4 ((∩_XBOOLE_0_3 X Y ) )X )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_29 : Prf (`forall X, `forall Y, `forall Z, ⊆_TARSKI_1 ((∩_XBOOLE_0_3 X Y ) )((∪_XBOOLE_0_2 X Z ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_30 : Prf (`forall X, `forall Y, `forall Z, imp (⊆_TARSKI_1 X Z ) (=_XBOOLE_0_4 ((∪_XBOOLE_0_2 X (∩_XBOOLE_0_3 Y Z ) ) )((∩_XBOOLE_0_3 (∪_XBOOLE_0_2 X Y ) Z ) ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_31 : Prf (`forall X, `forall Y, `forall Z, ⊆_TARSKI_1 ((∪_XBOOLE_0_2 (∩_XBOOLE_0_3 X Y ) (∩_XBOOLE_0_3 X Z ) ) )((∪_XBOOLE_0_2 Y Z ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_32 : Prf (`forall X, `forall Y, imp (=_XBOOLE_0_4 ((\_XBOOLE_0_4 X Y ) )((\_XBOOLE_0_4 Y X ) )) (=_XBOOLE_0_4 X Y )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_33 : Prf (`forall X, `forall Y, `forall Z, imp (⊆_TARSKI_1 X Y ) (⊆_TARSKI_1 ((\_XBOOLE_0_4 X Z ) )((\_XBOOLE_0_4 Y Z ) ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_34 : Prf (`forall X, `forall Y, `forall Z, imp (⊆_TARSKI_1 X Y ) (⊆_TARSKI_1 ((\_XBOOLE_0_4 Z Y ) )((\_XBOOLE_0_4 Z X ) ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_35 : Prf (`forall X, `forall Y, `forall Z, `forall V, imp (and (⊆_TARSKI_1 X Y ) (⊆_TARSKI_1 Z V )) (⊆_TARSKI_1 ((\_XBOOLE_0_4 X V ) )((\_XBOOLE_0_4 Y Z ) ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_36 : Prf (`forall X, `forall Y, ⊆_TARSKI_1 ((\_XBOOLE_0_4 X Y ) )X ) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_37 : Prf (`forall X, `forall Y, iff (=_XBOOLE_0_4 ((\_XBOOLE_0_4 X Y ) )((∅_XBOOLE_0_1 ) )) (⊆_TARSKI_1 X Y )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_38 : Prf (`forall X, `forall Y, imp (⊆_TARSKI_1 X ((\_XBOOLE_0_4 Y X ) )) (=_XBOOLE_0_4 X ((∅_XBOOLE_0_1 ) ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_39 : Prf (`forall X, `forall Y, =_XBOOLE_0_4 ((∪_XBOOLE_0_2 X (\_XBOOLE_0_4 Y X ) ) )((∪_XBOOLE_0_2 X Y ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_40 : Prf (`forall X, `forall Y, =_XBOOLE_0_4 ((\_XBOOLE_0_4 (∪_XBOOLE_0_2 X Y ) Y ) )((\_XBOOLE_0_4 X Y ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_41 : Prf (`forall X, `forall Y, `forall Z, =_XBOOLE_0_4 ((\_XBOOLE_0_4 (\_XBOOLE_0_4 X Y ) Z ) )((\_XBOOLE_0_4 X (∪_XBOOLE_0_2 Y Z ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_42 : Prf (`forall X, `forall Y, `forall Z, =_XBOOLE_0_4 ((\_XBOOLE_0_4 (∪_XBOOLE_0_2 X Y ) Z ) )((∪_XBOOLE_0_2 (\_XBOOLE_0_4 X Z ) (\_XBOOLE_0_4 Y Z ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_43 : Prf (`forall X, `forall Y, `forall Z, imp (⊆_TARSKI_1 X ((∪_XBOOLE_0_2 Y Z ) )) (⊆_TARSKI_1 ((\_XBOOLE_0_4 X Y ) )Z )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_44 : Prf (`forall X, `forall Y, `forall Z, imp (⊆_TARSKI_1 ((\_XBOOLE_0_4 X Y ) )Z ) (⊆_TARSKI_1 X ((∪_XBOOLE_0_2 Y Z ) ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_45 : Prf (`forall X, `forall Y, imp (⊆_TARSKI_1 X Y ) (=_XBOOLE_0_4 Y ((∪_XBOOLE_0_2 X (\_XBOOLE_0_4 Y X ) ) ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_46 : Prf (`forall X, `forall Y, =_XBOOLE_0_4 ((\_XBOOLE_0_4 X (∪_XBOOLE_0_2 X Y ) ) )((∅_XBOOLE_0_1 ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_47 : Prf (`forall X, `forall Y, =_XBOOLE_0_4 ((\_XBOOLE_0_4 X (∩_XBOOLE_0_3 X Y ) ) )((\_XBOOLE_0_4 X Y ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_48 : Prf (`forall X, `forall Y, =_XBOOLE_0_4 ((\_XBOOLE_0_4 X (\_XBOOLE_0_4 X Y ) ) )((∩_XBOOLE_0_3 X Y ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_49 : Prf (`forall X, `forall Y, `forall Z, =_XBOOLE_0_4 ((∩_XBOOLE_0_3 X (\_XBOOLE_0_4 Y Z ) ) )((\_XBOOLE_0_4 (∩_XBOOLE_0_3 X Y ) Z ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_50 : Prf (`forall X, `forall Y, `forall Z, =_XBOOLE_0_4 ((∩_XBOOLE_0_3 X (\_XBOOLE_0_4 Y Z ) ) )((\_XBOOLE_0_4 (∩_XBOOLE_0_3 X Y ) (∩_XBOOLE_0_3 X Z ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_51 : Prf (`forall X, `forall Y, =_XBOOLE_0_4 ((∪_XBOOLE_0_2 (∩_XBOOLE_0_3 X Y ) (\_XBOOLE_0_4 X Y ) ) )X ) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_52 : Prf (`forall X, `forall Y, `forall Z, =_XBOOLE_0_4 ((\_XBOOLE_0_4 X (\_XBOOLE_0_4 Y Z ) ) )((∪_XBOOLE_0_2 (\_XBOOLE_0_4 X Y ) (∩_XBOOLE_0_3 X Z ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_53 : Prf (`forall X, `forall Y, `forall Z, =_XBOOLE_0_4 ((\_XBOOLE_0_4 X (∪_XBOOLE_0_2 Y Z ) ) )((∩_XBOOLE_0_3 (\_XBOOLE_0_4 X Y ) (\_XBOOLE_0_4 X Z ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_54 : Prf (`forall X, `forall Y, `forall Z, =_XBOOLE_0_4 ((\_XBOOLE_0_4 X (∩_XBOOLE_0_3 Y Z ) ) )((∪_XBOOLE_0_2 (\_XBOOLE_0_4 X Y ) (\_XBOOLE_0_4 X Z ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_55 : Prf (`forall X, `forall Y, =_XBOOLE_0_4 ((\_XBOOLE_0_4 (∪_XBOOLE_0_2 X Y ) (∩_XBOOLE_0_3 X Y ) ) )((∪_XBOOLE_0_2 (\_XBOOLE_0_4 X Y ) (\_XBOOLE_0_4 Y X ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_56 : Prf (`forall X, `forall Y, `forall Z, imp (and (⊂_XBOOLE_0_2 X Y ) (⊂_XBOOLE_0_2 Y Z )) (⊂_XBOOLE_0_2 X Z )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_57 : Prf (`forall X, `forall Y, not (and (⊂_XBOOLE_0_2 X Y ) (⊂_XBOOLE_0_2 Y X ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_58 : Prf (`forall X, `forall Y, `forall Z, imp (and (⊂_XBOOLE_0_2 X Y ) (⊆_TARSKI_1 Y Z )) (⊂_XBOOLE_0_2 X Z )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_59 : Prf (`forall X, `forall Y, `forall Z, imp (and (⊆_TARSKI_1 X Y ) (⊂_XBOOLE_0_2 Y Z )) (⊂_XBOOLE_0_2 X Z )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_60 : Prf (`forall X, `forall Y, imp (⊆_TARSKI_1 X Y ) (not (⊂_XBOOLE_0_2 Y X ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_61 : Prf (`forall X, imp (≠_HIDDEN_2 X ((∅_XBOOLE_0_1 ) )) (⊂_XBOOLE_0_2 ((∅_XBOOLE_0_1 ) )X )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_62 : Prf (`forall X, not (⊂_XBOOLE_0_2 X ((∅_XBOOLE_0_1 ) ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_63 : Prf (`forall X, `forall Y, `forall Z, imp (and (⊆_TARSKI_1 X Y ) (misses_XBOOLE_0_1 Y Z )) (misses_XBOOLE_0_1 X Z )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_64 : Prf (`forall A, `forall B, `forall X, `forall Y, imp (and (and (⊆_TARSKI_1 A X ) (⊆_TARSKI_1 B Y )) (misses_XBOOLE_0_1 X Y )) (misses_XBOOLE_0_1 A B )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_65 : Prf (`forall X, misses_XBOOLE_0_1 X ((∅_XBOOLE_0_1 ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_66 : Prf (`forall X, iff (meets_XBOOLE_0_5 X X ) (≠_HIDDEN_2 X ((∅_XBOOLE_0_1 ) ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_67 : Prf (`forall X, `forall Y, `forall Z, imp (and (and (⊆_TARSKI_1 X Y ) (⊆_TARSKI_1 X Z )) (misses_XBOOLE_0_1 Y Z )) (=_XBOOLE_0_4 X ((∅_XBOOLE_0_1 ) ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_68 : Prf (`forall Y, `forall Z, `forall A, imp (and (⊆_TARSKI_1 A Y ) (⊆_TARSKI_1 A Z )) (meets_XBOOLE_0_5 Y Z )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_69 : Prf (`forall Y, `forall A, imp (⊆_TARSKI_1 A Y ) (meets_XBOOLE_0_5 A Y )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_70 : Prf (`forall X, `forall Y, `forall Z, iff (meets_XBOOLE_0_5 X ((∪_XBOOLE_0_2 Y Z ) )) (or (meets_XBOOLE_0_5 X Y ) (meets_XBOOLE_0_5 X Z ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_71 : Prf (`forall X, `forall Y, `forall Z, imp (and (and (=_XBOOLE_0_4 ((∪_XBOOLE_0_2 X Y ) )((∪_XBOOLE_0_2 Z Y ) )) (misses_XBOOLE_0_1 X Y )) (misses_XBOOLE_0_1 Z Y )) (=_XBOOLE_0_4 X Z )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_72 : Prf (`forall X, `forall X9, `forall Y, `forall Y9, imp (and (and (=_XBOOLE_0_4 ((∪_XBOOLE_0_2 X9 Y9 ) )((∪_XBOOLE_0_2 X Y ) )) (misses_XBOOLE_0_1 X X9 )) (misses_XBOOLE_0_1 Y Y9 )) (=_XBOOLE_0_4 X Y9 )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_73 : Prf (`forall X, `forall Y, `forall Z, imp (and (⊆_TARSKI_1 X ((∪_XBOOLE_0_2 Y Z ) )) (misses_XBOOLE_0_1 X Z )) (⊆_TARSKI_1 X Y )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_74 : Prf (`forall X, `forall Y, `forall Z, imp (meets_XBOOLE_0_5 X ((∩_XBOOLE_0_3 Y Z ) )) (meets_XBOOLE_0_5 X Y )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_75 : Prf (`forall X, `forall Y, imp (meets_XBOOLE_0_5 X Y ) (meets_XBOOLE_0_5 ((∩_XBOOLE_0_3 X Y ) )Y )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_76 : Prf (`forall X, `forall Y, `forall Z, imp (misses_XBOOLE_0_1 Y Z ) (misses_XBOOLE_0_1 ((∩_XBOOLE_0_3 X Y ) )((∩_XBOOLE_0_3 X Z ) ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_77 : Prf (`forall X, `forall Y, `forall Z, imp (and (meets_XBOOLE_0_5 X Y ) (⊆_TARSKI_1 X Z )) (meets_XBOOLE_0_5 X ((∩_XBOOLE_0_3 Y Z ) ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_78 : Prf (`forall X, `forall Y, `forall Z, imp (misses_XBOOLE_0_1 X Y ) (=_XBOOLE_0_4 ((∩_XBOOLE_0_3 X (∪_XBOOLE_0_2 Y Z ) ) )((∩_XBOOLE_0_3 X Z ) ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_79 : Prf (`forall X, `forall Y, misses_XBOOLE_0_1 ((\_XBOOLE_0_4 X Y ) )Y ) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_80 : Prf (`forall X, `forall Y, `forall Z, imp (misses_XBOOLE_0_1 X Y ) (misses_XBOOLE_0_1 X ((\_XBOOLE_0_4 Y Z ) ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_81 : Prf (`forall X, `forall Y, `forall Z, imp (misses_XBOOLE_0_1 X ((\_XBOOLE_0_4 Y Z ) )) (misses_XBOOLE_0_1 Y ((\_XBOOLE_0_4 X Z ) ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_82 : Prf (`forall X, `forall Y, misses_XBOOLE_0_1 ((\_XBOOLE_0_4 X Y ) )((\_XBOOLE_0_4 Y X ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_83 : Prf (`forall X, `forall Y, iff (misses_XBOOLE_0_1 X Y ) (=_XBOOLE_0_4 ((\_XBOOLE_0_4 X Y ) )X )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_84 : Prf (`forall X, `forall Y, `forall Z, imp (and (meets_XBOOLE_0_5 X Y ) (misses_XBOOLE_0_1 X Z )) (meets_XBOOLE_0_5 X ((\_XBOOLE_0_4 Y Z ) ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_85 : Prf (`forall X, `forall Y, `forall Z, imp (⊆_TARSKI_1 X Y ) (misses_XBOOLE_0_1 X ((\_XBOOLE_0_4 Z Y ) ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_86 : Prf (`forall X, `forall Y, `forall Z, imp (and (⊆_TARSKI_1 X Y ) (misses_XBOOLE_0_1 X Z )) (⊆_TARSKI_1 X ((\_XBOOLE_0_4 Y Z ) ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_87 : Prf (`forall X, `forall Y, `forall Z, imp (misses_XBOOLE_0_1 Y Z ) (=_XBOOLE_0_4 ((∪_XBOOLE_0_2 (\_XBOOLE_0_4 X Y ) Z ) )((\_XBOOLE_0_4 (∪_XBOOLE_0_2 X Z ) Y ) ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_88 : Prf (`forall X, `forall Y, imp (misses_XBOOLE_0_1 X Y ) (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (∪_XBOOLE_0_2 X Y ) Y ) )X )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_89 : Prf (`forall X, `forall Y, misses_XBOOLE_0_1 ((∩_XBOOLE_0_3 X Y ) )((\_XBOOLE_0_4 X Y ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_90 : Prf (`forall X, `forall Y, misses_XBOOLE_0_1 ((\_XBOOLE_0_4 X (∩_XBOOLE_0_3 X Y ) ) )Y ) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_91 : Prf (`forall X, `forall Y, `forall Z, =_XBOOLE_0_4 ((⊕_XBOOLE_0_5 (⊕_XBOOLE_0_5 X Y ) Z ) )((⊕_XBOOLE_0_5 X (⊕_XBOOLE_0_5 Y Z ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_92 : Prf (`forall X, =_XBOOLE_0_4 ((⊕_XBOOLE_0_5 X X ) )((∅_XBOOLE_0_1 ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_93 : Prf (`forall X, `forall Y, =_XBOOLE_0_4 ((∪_XBOOLE_0_2 X Y ) )((∪_XBOOLE_0_2 (⊕_XBOOLE_0_5 X Y ) (∩_XBOOLE_0_3 X Y ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_94 : Prf (`forall X, `forall Y, =_XBOOLE_0_4 ((∪_XBOOLE_0_2 X Y ) )((⊕_XBOOLE_0_5 (⊕_XBOOLE_0_5 X Y ) (∩_XBOOLE_0_3 X Y ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_95 : Prf (`forall X, `forall Y, =_XBOOLE_0_4 ((∩_XBOOLE_0_3 X Y ) )((⊕_XBOOLE_0_5 (⊕_XBOOLE_0_5 X Y ) (∪_XBOOLE_0_2 X Y ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_96 : Prf (`forall X, `forall Y, ⊆_TARSKI_1 ((\_XBOOLE_0_4 X Y ) )((⊕_XBOOLE_0_5 X Y ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_97 : Prf (`forall X, `forall Y, `forall Z, imp (and (⊆_TARSKI_1 ((\_XBOOLE_0_4 X Y ) )Z ) (⊆_TARSKI_1 ((\_XBOOLE_0_4 Y X ) )Z )) (⊆_TARSKI_1 ((⊕_XBOOLE_0_5 X Y ) )Z )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_98 : Prf (`forall X, `forall Y, =_XBOOLE_0_4 ((∪_XBOOLE_0_2 X Y ) )((⊕_XBOOLE_0_5 X (\_XBOOLE_0_4 Y X ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_99 : Prf (`forall X, `forall Y, `forall Z, =_XBOOLE_0_4 ((\_XBOOLE_0_4 (⊕_XBOOLE_0_5 X Y ) Z ) )((∪_XBOOLE_0_2 (\_XBOOLE_0_4 X (∪_XBOOLE_0_2 Y Z ) ) (\_XBOOLE_0_4 Y (∪_XBOOLE_0_2 X Z ) ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_100 : Prf (`forall X, `forall Y, =_XBOOLE_0_4 ((\_XBOOLE_0_4 X Y ) )((⊕_XBOOLE_0_5 X (∩_XBOOLE_0_3 X Y ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_101 : Prf (`forall X, `forall Y, =_XBOOLE_0_4 ((⊕_XBOOLE_0_5 X Y ) )((\_XBOOLE_0_4 (∪_XBOOLE_0_2 X Y ) (∩_XBOOLE_0_3 X Y ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_102 : Prf (`forall X, `forall Y, `forall Z, =_XBOOLE_0_4 ((\_XBOOLE_0_4 X (⊕_XBOOLE_0_5 Y Z ) ) )((∪_XBOOLE_0_2 (\_XBOOLE_0_4 X (∪_XBOOLE_0_2 Y Z ) ) (∩_XBOOLE_0_3 (∩_XBOOLE_0_3 X Y ) Z ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_103 : Prf (`forall X, `forall Y, misses_XBOOLE_0_1 ((∩_XBOOLE_0_3 X Y ) )((⊕_XBOOLE_0_5 X Y ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_104 : Prf (`forall X, `forall Y, iff (or (or (⊂_XBOOLE_0_2 X Y ) (=_XBOOLE_0_4 X Y )) (⊂_XBOOLE_0_2 Y X )) (are_c=-comparable_XBOOLE_0_3 X Y )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_105 : Prf (`forall X, `forall Y, imp (⊂_XBOOLE_0_2 X Y ) (≠_HIDDEN_2 ((\_XBOOLE_0_4 Y X ) )((∅_XBOOLE_0_1 ) ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_106 : Prf (`forall A, `forall B, `forall X, imp (⊆_TARSKI_1 X ((\_XBOOLE_0_4 A B ) )) (and (⊆_TARSKI_1 X A ) (misses_XBOOLE_0_1 X B ))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_107 : Prf (`forall A, `forall B, `forall X, iff (⊆_TARSKI_1 X ((⊕_XBOOLE_0_5 A B ) )) (and (⊆_TARSKI_1 X ((∪_XBOOLE_0_2 A B ) )) (misses_XBOOLE_0_1 X ((∩_XBOOLE_0_3 A B ) )))) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_108 : Prf (`forall A, `forall X, `forall Y, imp (⊆_TARSKI_1 X A ) (⊆_TARSKI_1 ((∩_XBOOLE_0_3 X Y ) )A )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_109 : Prf (`forall A, `forall X, `forall Y, imp (⊆_TARSKI_1 X A ) (⊆_TARSKI_1 ((\_XBOOLE_0_4 X Y ) )A )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_110 : Prf (`forall A, `forall X, `forall Y, imp (and (⊆_TARSKI_1 X A ) (⊆_TARSKI_1 Y A )) (⊆_TARSKI_1 ((⊕_XBOOLE_0_5 X Y ) )A )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_111 : Prf (`forall X, `forall Y, `forall Z, =_XBOOLE_0_4 ((\_XBOOLE_0_4 (∩_XBOOLE_0_3 X Z ) (∩_XBOOLE_0_3 Y Z ) ) )((∩_XBOOLE_0_3 (\_XBOOLE_0_4 X Y ) Z ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_112 : Prf (`forall X, `forall Y, `forall Z, =_XBOOLE_0_4 ((⊕_XBOOLE_0_5 (∩_XBOOLE_0_3 X Z ) (∩_XBOOLE_0_3 Y Z ) ) )((∩_XBOOLE_0_3 (⊕_XBOOLE_0_5 X Y ) Z ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_113 : Prf (`forall X, `forall Y, `forall Z, `forall V, =_XBOOLE_0_4 ((∪_XBOOLE_0_2 (∪_XBOOLE_0_2 (∪_XBOOLE_0_2 X Y ) Z ) V ) )((∪_XBOOLE_0_2 X (∪_XBOOLE_0_2 (∪_XBOOLE_0_2 Y Z ) V ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_114 : Prf (`forall A, `forall B, `forall C, `forall D, imp (and (and (misses_XBOOLE_0_1 A D ) (misses_XBOOLE_0_1 B D )) (misses_XBOOLE_0_1 C D )) (misses_XBOOLE_0_1 ((∪_XBOOLE_0_2 (∪_XBOOLE_0_2 A B ) C ) )D )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_116 : Prf (`forall X, `forall Y, `forall Z, =_XBOOLE_0_4 ((∩_XBOOLE_0_3 X (∩_XBOOLE_0_3 Y Z ) ) )((∩_XBOOLE_0_3 (∩_XBOOLE_0_3 X Y ) (∩_XBOOLE_0_3 X Z ) ) )) ≔ 
begin
  abort;

opaque symbol Th_XBOOLE_1_117 : Prf (`forall P, `forall G, `forall C, imp (⊆_TARSKI_1 C G ) (=_XBOOLE_0_4 ((\_XBOOLE_0_4 P C ) )((∪_XBOOLE_0_2 (\_XBOOLE_0_4 P G ) (∩_XBOOLE_0_3 P (\_XBOOLE_0_4 G C ) ) ) ))) ≔ 
begin
  abort;
