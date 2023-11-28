require open lp.predicatelogic;
require open lp.hidden;
require open lp.tarski;
require open lp.xboole_0;

// Definition

// Functor
symbol enum_ENUMSET1_1 : U → U → U → U ;

// SimplePredicativeDefiniens

symbol enum_ENUMSET1_1-def (v5:U) (v6:U) (v7:U) ≔ imp (and (and (object_HIDDEN_1 v5) (object_HIDDEN_1 v6)) (object_HIDDEN_1 v7)) (`forall r1,  imp (object_HIDDEN_1 r1) (iff (∈_HIDDEN_3 r1 ((enum_ENUMSET1_1 v5 v6 v7 ) )) (or (or (=_HIDDEN_1 r1 v5 ) (=_HIDDEN_1 r1 v6 )) (=_HIDDEN_1 r1 v7 ))));

// Type Specification

opaque symbol TS_49_8 : Prf (`forall v5, imp (object_HIDDEN_1 v5) (`forall v6, imp (object_HIDDEN_1 v6) (`forall v7, imp (object_HIDDEN_1 v7) (set_HIDDEN_2 (enum_ENUMSET1_1 v5 v6 v7 ))))) ≔ 
begin
  abort;

// Definition

// Functor
symbol enum_ENUMSET1_2 : U → U → U → U → U ;

// SimplePredicativeDefiniens

symbol enum_ENUMSET1_2-def (v17:U) (v18:U) (v19:U) (v20:U) ≔ imp (and (and (and (object_HIDDEN_1 v17) (object_HIDDEN_1 v18)) (object_HIDDEN_1 v19)) (object_HIDDEN_1 v20)) (`forall r1,  imp (object_HIDDEN_1 r1) (iff (∈_HIDDEN_3 r1 ((enum_ENUMSET1_2 v17 v18 v19 v20 ) )) (or (or (or (=_HIDDEN_1 r1 v17 ) (=_HIDDEN_1 r1 v18 )) (=_HIDDEN_1 r1 v19 )) (=_HIDDEN_1 r1 v20 ))));

// Type Specification

opaque symbol TS_70_8 : Prf (`forall v17, imp (object_HIDDEN_1 v17) (`forall v18, imp (object_HIDDEN_1 v18) (`forall v19, imp (object_HIDDEN_1 v19) (`forall v20, imp (object_HIDDEN_1 v20) (set_HIDDEN_2 (enum_ENUMSET1_2 v17 v18 v19 v20 )))))) ≔ 
begin
  abort;

// Definition

// Functor
symbol enum_ENUMSET1_3 : U → U → U → U → U → U ;

// SimplePredicativeDefiniens

symbol enum_ENUMSET1_3-def (v30:U) (v31:U) (v32:U) (v33:U) (v34:U) ≔ imp (and (and (and (and (object_HIDDEN_1 v30) (object_HIDDEN_1 v31)) (object_HIDDEN_1 v32)) (object_HIDDEN_1 v33)) (object_HIDDEN_1 v34)) (`forall r1,  imp (object_HIDDEN_1 r1) (iff (∈_HIDDEN_3 r1 ((enum_ENUMSET1_3 v30 v31 v32 v33 v34 ) )) (or (or (or (or (=_HIDDEN_1 r1 v30 ) (=_HIDDEN_1 r1 v31 )) (=_HIDDEN_1 r1 v32 )) (=_HIDDEN_1 r1 v33 )) (=_HIDDEN_1 r1 v34 ))));

// Type Specification

opaque symbol TS_91_8 : Prf (`forall v30, imp (object_HIDDEN_1 v30) (`forall v31, imp (object_HIDDEN_1 v31) (`forall v32, imp (object_HIDDEN_1 v32) (`forall v33, imp (object_HIDDEN_1 v33) (`forall v34, imp (object_HIDDEN_1 v34) (set_HIDDEN_2 (enum_ENUMSET1_3 v30 v31 v32 v33 v34 ))))))) ≔ 
begin
  abort;

// Definition

// Functor
symbol enum_ENUMSET1_4 : U → U → U → U → U → U → U ;

// SimplePredicativeDefiniens

symbol enum_ENUMSET1_4-def (v44:U) (v45:U) (v46:U) (v47:U) (v48:U) (v49:U) ≔ imp (and (and (and (and (and (object_HIDDEN_1 v44) (object_HIDDEN_1 v45)) (object_HIDDEN_1 v46)) (object_HIDDEN_1 v47)) (object_HIDDEN_1 v48)) (object_HIDDEN_1 v49)) (`forall r1,  imp (object_HIDDEN_1 r1) (iff (∈_HIDDEN_3 r1 ((enum_ENUMSET1_4 v44 v45 v46 v47 v48 v49 ) )) (or (or (or (or (or (=_HIDDEN_1 r1 v44 ) (=_HIDDEN_1 r1 v45 )) (=_HIDDEN_1 r1 v46 )) (=_HIDDEN_1 r1 v47 )) (=_HIDDEN_1 r1 v48 )) (=_HIDDEN_1 r1 v49 ))));

// Type Specification

opaque symbol TS_112_8 : Prf (`forall v44, imp (object_HIDDEN_1 v44) (`forall v45, imp (object_HIDDEN_1 v45) (`forall v46, imp (object_HIDDEN_1 v46) (`forall v47, imp (object_HIDDEN_1 v47) (`forall v48, imp (object_HIDDEN_1 v48) (`forall v49, imp (object_HIDDEN_1 v49) (set_HIDDEN_2 (enum_ENUMSET1_4 v44 v45 v46 v47 v48 v49 )))))))) ≔ 
begin
  abort;

// Definition

// Functor
symbol enum_ENUMSET1_5 : U → U → U → U → U → U → U → U ;

// SimplePredicativeDefiniens

symbol enum_ENUMSET1_5-def (v59:U) (v60:U) (v61:U) (v62:U) (v63:U) (v64:U) (v65:U) ≔ imp (and (and (and (and (and (and (object_HIDDEN_1 v59) (object_HIDDEN_1 v60)) (object_HIDDEN_1 v61)) (object_HIDDEN_1 v62)) (object_HIDDEN_1 v63)) (object_HIDDEN_1 v64)) (object_HIDDEN_1 v65)) (`forall r1,  imp (object_HIDDEN_1 r1) (iff (∈_HIDDEN_3 r1 ((enum_ENUMSET1_5 v59 v60 v61 v62 v63 v64 v65 ) )) (or (or (or (or (or (or (=_HIDDEN_1 r1 v59 ) (=_HIDDEN_1 r1 v60 )) (=_HIDDEN_1 r1 v61 )) (=_HIDDEN_1 r1 v62 )) (=_HIDDEN_1 r1 v63 )) (=_HIDDEN_1 r1 v64 )) (=_HIDDEN_1 r1 v65 ))));

// Type Specification

opaque symbol TS_133_8 : Prf (`forall v59, imp (object_HIDDEN_1 v59) (`forall v60, imp (object_HIDDEN_1 v60) (`forall v61, imp (object_HIDDEN_1 v61) (`forall v62, imp (object_HIDDEN_1 v62) (`forall v63, imp (object_HIDDEN_1 v63) (`forall v64, imp (object_HIDDEN_1 v64) (`forall v65, imp (object_HIDDEN_1 v65) (set_HIDDEN_2 (enum_ENUMSET1_5 v59 v60 v61 v62 v63 v64 v65 ))))))))) ≔ 
begin
  abort;

// Definition

// Functor
symbol enum_ENUMSET1_6 : U → U → U → U → U → U → U → U → U ;

// SimplePredicativeDefiniens

symbol enum_ENUMSET1_6-def (v75:U) (v76:U) (v77:U) (v78:U) (v79:U) (v80:U) (v81:U) (v82:U) ≔ imp (and (and (and (and (and (and (and (object_HIDDEN_1 v75) (object_HIDDEN_1 v76)) (object_HIDDEN_1 v77)) (object_HIDDEN_1 v78)) (object_HIDDEN_1 v79)) (object_HIDDEN_1 v80)) (object_HIDDEN_1 v81)) (object_HIDDEN_1 v82)) (`forall r1,  imp (object_HIDDEN_1 r1) (iff (∈_HIDDEN_3 r1 ((enum_ENUMSET1_6 v75 v76 v77 v78 v79 v80 v81 v82 ) )) (or (or (or (or (or (or (or (=_HIDDEN_1 r1 v75 ) (=_HIDDEN_1 r1 v76 )) (=_HIDDEN_1 r1 v77 )) (=_HIDDEN_1 r1 v78 )) (=_HIDDEN_1 r1 v79 )) (=_HIDDEN_1 r1 v80 )) (=_HIDDEN_1 r1 v81 )) (=_HIDDEN_1 r1 v82 ))));

// Type Specification

opaque symbol TS_154_8 : Prf (`forall v75, imp (object_HIDDEN_1 v75) (`forall v76, imp (object_HIDDEN_1 v76) (`forall v77, imp (object_HIDDEN_1 v77) (`forall v78, imp (object_HIDDEN_1 v78) (`forall v79, imp (object_HIDDEN_1 v79) (`forall v80, imp (object_HIDDEN_1 v80) (`forall v81, imp (object_HIDDEN_1 v81) (`forall v82, imp (object_HIDDEN_1 v82) (set_HIDDEN_2 (enum_ENUMSET1_6 v75 v76 v77 v78 v79 v80 v81 v82 )))))))))) ≔ 
begin
  abort;

// Definition

// Functor
symbol enum_ENUMSET1_7 : U → U → U → U → U → U → U → U → U → U ;

// SimplePredicativeDefiniens

symbol enum_ENUMSET1_7-def (v92:U) (v93:U) (v94:U) (v95:U) (v96:U) (v97:U) (v98:U) (v99:U) (v100:U) ≔ imp (and (and (and (and (and (and (and (and (object_HIDDEN_1 v92) (object_HIDDEN_1 v93)) (object_HIDDEN_1 v94)) (object_HIDDEN_1 v95)) (object_HIDDEN_1 v96)) (object_HIDDEN_1 v97)) (object_HIDDEN_1 v98)) (object_HIDDEN_1 v99)) (object_HIDDEN_1 v100)) (`forall r1,  imp (object_HIDDEN_1 r1) (iff (∈_HIDDEN_3 r1 ((enum_ENUMSET1_7 v92 v93 v94 v95 v96 v97 v98 v99 v100 ) )) (or (or (or (or (or (or (or (or (=_HIDDEN_1 r1 v92 ) (=_HIDDEN_1 r1 v93 )) (=_HIDDEN_1 r1 v94 )) (=_HIDDEN_1 r1 v95 )) (=_HIDDEN_1 r1 v96 )) (=_HIDDEN_1 r1 v97 )) (=_HIDDEN_1 r1 v98 )) (=_HIDDEN_1 r1 v99 )) (=_HIDDEN_1 r1 v100 ))));

// Type Specification

opaque symbol TS_175_8 : Prf (`forall v92, imp (object_HIDDEN_1 v92) (`forall v93, imp (object_HIDDEN_1 v93) (`forall v94, imp (object_HIDDEN_1 v94) (`forall v95, imp (object_HIDDEN_1 v95) (`forall v96, imp (object_HIDDEN_1 v96) (`forall v97, imp (object_HIDDEN_1 v97) (`forall v98, imp (object_HIDDEN_1 v98) (`forall v99, imp (object_HIDDEN_1 v99) (`forall v100, imp (object_HIDDEN_1 v100) (set_HIDDEN_2 (enum_ENUMSET1_7 v92 v93 v94 v95 v96 v97 v98 v99 v100 ))))))))))) ≔ 
begin
  abort;

// Definition

// Functor
symbol enum_ENUMSET1_8 : U → U → U → U → U → U → U → U → U → U → U ;

// SimplePredicativeDefiniens

symbol enum_ENUMSET1_8-def (v110:U) (v111:U) (v112:U) (v113:U) (v114:U) (v115:U) (v116:U) (v117:U) (v118:U) (v119:U) ≔ imp (and (and (and (and (and (and (and (and (and (object_HIDDEN_1 v110) (object_HIDDEN_1 v111)) (object_HIDDEN_1 v112)) (object_HIDDEN_1 v113)) (object_HIDDEN_1 v114)) (object_HIDDEN_1 v115)) (object_HIDDEN_1 v116)) (object_HIDDEN_1 v117)) (object_HIDDEN_1 v118)) (object_HIDDEN_1 v119)) (`forall r1,  imp (object_HIDDEN_1 r1) (iff (∈_HIDDEN_3 r1 ((enum_ENUMSET1_8 v110 v111 v112 v113 v114 v115 v116 v117 v118 v119 ) )) (or (or (or (or (or (or (or (or (or (=_HIDDEN_1 r1 v110 ) (=_HIDDEN_1 r1 v111 )) (=_HIDDEN_1 r1 v112 )) (=_HIDDEN_1 r1 v113 )) (=_HIDDEN_1 r1 v114 )) (=_HIDDEN_1 r1 v115 )) (=_HIDDEN_1 r1 v116 )) (=_HIDDEN_1 r1 v117 )) (=_HIDDEN_1 r1 v118 )) (=_HIDDEN_1 r1 v119 ))));

// Type Specification

opaque symbol TS_195_8 : Prf (`forall v110, imp (object_HIDDEN_1 v110) (`forall v111, imp (object_HIDDEN_1 v111) (`forall v112, imp (object_HIDDEN_1 v112) (`forall v113, imp (object_HIDDEN_1 v113) (`forall v114, imp (object_HIDDEN_1 v114) (`forall v115, imp (object_HIDDEN_1 v115) (`forall v116, imp (object_HIDDEN_1 v116) (`forall v117, imp (object_HIDDEN_1 v117) (`forall v118, imp (object_HIDDEN_1 v118) (`forall v119, imp (object_HIDDEN_1 v119) (set_HIDDEN_2 (enum_ENUMSET1_8 v110 v111 v112 v113 v114 v115 v116 v117 v118 v119 )))))))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_1 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (=_XBOOLE_0_4 ((enum_TARSKI_2 r2 r3 ) )((∪_XBOOLE_0_2 (enum_TARSKI_1 r2 ) (enum_TARSKI_1 r3 ) ) )))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_2 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (=_XBOOLE_0_4 ((enum_ENUMSET1_1 r2 r3 r4 ) )((∪_XBOOLE_0_2 (enum_TARSKI_1 r2 ) (enum_TARSKI_2 r3 r4 ) ) ))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_3 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (=_XBOOLE_0_4 ((enum_ENUMSET1_1 r2 r3 r4 ) )((∪_XBOOLE_0_2 (enum_TARSKI_2 r2 r3 ) (enum_TARSKI_1 r4 ) ) ))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_4 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (=_XBOOLE_0_4 ((enum_ENUMSET1_2 r2 r3 r4 r5 ) )((∪_XBOOLE_0_2 (enum_TARSKI_1 r2 ) (enum_ENUMSET1_1 r3 r4 r5 ) ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_5 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (=_XBOOLE_0_4 ((enum_ENUMSET1_2 r2 r3 r4 r5 ) )((∪_XBOOLE_0_2 (enum_TARSKI_2 r2 r3 ) (enum_TARSKI_2 r4 r5 ) ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_6 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (=_XBOOLE_0_4 ((enum_ENUMSET1_2 r2 r3 r4 r5 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_1 r2 r3 r4 ) (enum_TARSKI_1 r5 ) ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_7 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (=_XBOOLE_0_4 ((enum_ENUMSET1_3 r2 r3 r4 r5 r6 ) )((∪_XBOOLE_0_2 (enum_TARSKI_1 r2 ) (enum_ENUMSET1_2 r3 r4 r5 r6 ) ) ))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_8 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (=_XBOOLE_0_4 ((enum_ENUMSET1_3 r2 r3 r4 r5 r6 ) )((∪_XBOOLE_0_2 (enum_TARSKI_2 r2 r3 ) (enum_ENUMSET1_1 r4 r5 r6 ) ) ))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_9 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (=_XBOOLE_0_4 ((enum_ENUMSET1_3 r2 r3 r4 r5 r6 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_1 r2 r3 r4 ) (enum_TARSKI_2 r5 r6 ) ) ))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_10 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (=_XBOOLE_0_4 ((enum_ENUMSET1_3 r2 r3 r4 r5 r6 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_2 r2 r3 r4 r5 ) (enum_TARSKI_1 r6 ) ) ))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_11 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r7,  imp (object_HIDDEN_1 r7) (=_XBOOLE_0_4 ((enum_ENUMSET1_4 r2 r3 r4 r5 r6 r7 ) )((∪_XBOOLE_0_2 (enum_TARSKI_1 r2 ) (enum_ENUMSET1_3 r3 r4 r5 r6 r7 ) ) )))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_12 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r7,  imp (object_HIDDEN_1 r7) (=_XBOOLE_0_4 ((enum_ENUMSET1_4 r2 r3 r4 r5 r6 r7 ) )((∪_XBOOLE_0_2 (enum_TARSKI_2 r2 r3 ) (enum_ENUMSET1_2 r4 r5 r6 r7 ) ) )))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_13 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r7,  imp (object_HIDDEN_1 r7) (=_XBOOLE_0_4 ((enum_ENUMSET1_4 r2 r3 r4 r5 r6 r7 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_1 r2 r3 r4 ) (enum_ENUMSET1_1 r5 r6 r7 ) ) )))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_14 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r7,  imp (object_HIDDEN_1 r7) (=_XBOOLE_0_4 ((enum_ENUMSET1_4 r2 r3 r4 r5 r6 r7 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_2 r2 r3 r4 r5 ) (enum_TARSKI_2 r6 r7 ) ) )))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_15 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r7,  imp (object_HIDDEN_1 r7) (=_XBOOLE_0_4 ((enum_ENUMSET1_4 r2 r3 r4 r5 r6 r7 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_3 r2 r3 r4 r5 r6 ) (enum_TARSKI_1 r7 ) ) )))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_16 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r7,  imp (object_HIDDEN_1 r7) (`forall r8,  imp (object_HIDDEN_1 r8) (=_XBOOLE_0_4 ((enum_ENUMSET1_5 r2 r3 r4 r5 r6 r7 r8 ) )((∪_XBOOLE_0_2 (enum_TARSKI_1 r2 ) (enum_ENUMSET1_4 r3 r4 r5 r6 r7 r8 ) ) ))))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_17 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r7,  imp (object_HIDDEN_1 r7) (`forall r8,  imp (object_HIDDEN_1 r8) (=_XBOOLE_0_4 ((enum_ENUMSET1_5 r2 r3 r4 r5 r6 r7 r8 ) )((∪_XBOOLE_0_2 (enum_TARSKI_2 r2 r3 ) (enum_ENUMSET1_3 r4 r5 r6 r7 r8 ) ) ))))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_18 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r7,  imp (object_HIDDEN_1 r7) (`forall r8,  imp (object_HIDDEN_1 r8) (=_XBOOLE_0_4 ((enum_ENUMSET1_5 r2 r3 r4 r5 r6 r7 r8 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_1 r2 r3 r4 ) (enum_ENUMSET1_2 r5 r6 r7 r8 ) ) ))))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_19 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r7,  imp (object_HIDDEN_1 r7) (`forall r8,  imp (object_HIDDEN_1 r8) (=_XBOOLE_0_4 ((enum_ENUMSET1_5 r2 r3 r4 r5 r6 r7 r8 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_2 r2 r3 r4 r5 ) (enum_ENUMSET1_1 r6 r7 r8 ) ) ))))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_20 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r7,  imp (object_HIDDEN_1 r7) (`forall r8,  imp (object_HIDDEN_1 r8) (=_XBOOLE_0_4 ((enum_ENUMSET1_5 r2 r3 r4 r5 r6 r7 r8 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_3 r2 r3 r4 r5 r6 ) (enum_TARSKI_2 r7 r8 ) ) ))))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_21 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r7,  imp (object_HIDDEN_1 r7) (`forall r8,  imp (object_HIDDEN_1 r8) (=_XBOOLE_0_4 ((enum_ENUMSET1_5 r2 r3 r4 r5 r6 r7 r8 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_4 r2 r3 r4 r5 r6 r7 ) (enum_TARSKI_1 r8 ) ) ))))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_22 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r7,  imp (object_HIDDEN_1 r7) (`forall r8,  imp (object_HIDDEN_1 r8) (`forall r9,  imp (object_HIDDEN_1 r9) (=_XBOOLE_0_4 ((enum_ENUMSET1_6 r2 r3 r4 r5 r6 r7 r8 r9 ) )((∪_XBOOLE_0_2 (enum_TARSKI_1 r2 ) (enum_ENUMSET1_5 r3 r4 r5 r6 r7 r8 r9 ) ) )))))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_23 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r7,  imp (object_HIDDEN_1 r7) (`forall r8,  imp (object_HIDDEN_1 r8) (`forall r9,  imp (object_HIDDEN_1 r9) (=_XBOOLE_0_4 ((enum_ENUMSET1_6 r2 r3 r4 r5 r6 r7 r8 r9 ) )((∪_XBOOLE_0_2 (enum_TARSKI_2 r2 r3 ) (enum_ENUMSET1_4 r4 r5 r6 r7 r8 r9 ) ) )))))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_24 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r7,  imp (object_HIDDEN_1 r7) (`forall r8,  imp (object_HIDDEN_1 r8) (`forall r9,  imp (object_HIDDEN_1 r9) (=_XBOOLE_0_4 ((enum_ENUMSET1_6 r2 r3 r4 r5 r6 r7 r8 r9 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_1 r2 r3 r4 ) (enum_ENUMSET1_3 r5 r6 r7 r8 r9 ) ) )))))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_25 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r7,  imp (object_HIDDEN_1 r7) (`forall r8,  imp (object_HIDDEN_1 r8) (`forall r9,  imp (object_HIDDEN_1 r9) (=_XBOOLE_0_4 ((enum_ENUMSET1_6 r2 r3 r4 r5 r6 r7 r8 r9 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_2 r2 r3 r4 r5 ) (enum_ENUMSET1_2 r6 r7 r8 r9 ) ) )))))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_26 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r7,  imp (object_HIDDEN_1 r7) (`forall r8,  imp (object_HIDDEN_1 r8) (`forall r9,  imp (object_HIDDEN_1 r9) (=_XBOOLE_0_4 ((enum_ENUMSET1_6 r2 r3 r4 r5 r6 r7 r8 r9 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_3 r2 r3 r4 r5 r6 ) (enum_ENUMSET1_1 r7 r8 r9 ) ) )))))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_27 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r7,  imp (object_HIDDEN_1 r7) (`forall r8,  imp (object_HIDDEN_1 r8) (`forall r9,  imp (object_HIDDEN_1 r9) (=_XBOOLE_0_4 ((enum_ENUMSET1_6 r2 r3 r4 r5 r6 r7 r8 r9 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_4 r2 r3 r4 r5 r6 r7 ) (enum_TARSKI_2 r8 r9 ) ) )))))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_28 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r7,  imp (object_HIDDEN_1 r7) (`forall r8,  imp (object_HIDDEN_1 r8) (`forall r9,  imp (object_HIDDEN_1 r9) (=_XBOOLE_0_4 ((enum_ENUMSET1_6 r2 r3 r4 r5 r6 r7 r8 r9 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_5 r2 r3 r4 r5 r6 r7 r8 ) (enum_TARSKI_1 r9 ) ) )))))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_29 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (=_XBOOLE_0_4 ((enum_TARSKI_2 r2 r2 ) )((enum_TARSKI_1 r2 ) ))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_30 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (=_XBOOLE_0_4 ((enum_ENUMSET1_1 r2 r2 r3 ) )((enum_TARSKI_2 r2 r3 ) )))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_31 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (=_XBOOLE_0_4 ((enum_ENUMSET1_2 r2 r2 r3 r4 ) )((enum_ENUMSET1_1 r2 r3 r4 ) ))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_32 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (=_XBOOLE_0_4 ((enum_ENUMSET1_3 r2 r2 r3 r4 r5 ) )((enum_ENUMSET1_2 r2 r3 r4 r5 ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_33 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (=_XBOOLE_0_4 ((enum_ENUMSET1_4 r2 r2 r3 r4 r5 r6 ) )((enum_ENUMSET1_3 r2 r3 r4 r5 r6 ) ))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_34 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r7,  imp (object_HIDDEN_1 r7) (=_XBOOLE_0_4 ((enum_ENUMSET1_5 r2 r2 r3 r4 r5 r6 r7 ) )((enum_ENUMSET1_4 r2 r3 r4 r5 r6 r7 ) )))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_35 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r7,  imp (object_HIDDEN_1 r7) (`forall r8,  imp (object_HIDDEN_1 r8) (=_XBOOLE_0_4 ((enum_ENUMSET1_6 r2 r2 r3 r4 r5 r6 r7 r8 ) )((enum_ENUMSET1_5 r2 r3 r4 r5 r6 r7 r8 ) ))))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_36 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (=_XBOOLE_0_4 ((enum_ENUMSET1_1 r2 r2 r2 ) )((enum_TARSKI_1 r2 ) ))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_37 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (=_XBOOLE_0_4 ((enum_ENUMSET1_2 r2 r2 r2 r3 ) )((enum_TARSKI_2 r2 r3 ) )))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_38 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (=_XBOOLE_0_4 ((enum_ENUMSET1_3 r2 r2 r2 r3 r4 ) )((enum_ENUMSET1_1 r2 r3 r4 ) ))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_39 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (=_XBOOLE_0_4 ((enum_ENUMSET1_4 r2 r2 r2 r3 r4 r5 ) )((enum_ENUMSET1_2 r2 r3 r4 r5 ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_40 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (=_XBOOLE_0_4 ((enum_ENUMSET1_5 r2 r2 r2 r3 r4 r5 r6 ) )((enum_ENUMSET1_3 r2 r3 r4 r5 r6 ) ))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_41 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r7,  imp (object_HIDDEN_1 r7) (=_XBOOLE_0_4 ((enum_ENUMSET1_6 r2 r2 r2 r3 r4 r5 r6 r7 ) )((enum_ENUMSET1_4 r2 r3 r4 r5 r6 r7 ) )))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_42 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (=_XBOOLE_0_4 ((enum_ENUMSET1_2 r2 r2 r2 r2 ) )((enum_TARSKI_1 r2 ) ))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_43 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (=_XBOOLE_0_4 ((enum_ENUMSET1_3 r2 r2 r2 r2 r3 ) )((enum_TARSKI_2 r2 r3 ) )))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_44 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (=_XBOOLE_0_4 ((enum_ENUMSET1_4 r2 r2 r2 r2 r3 r4 ) )((enum_ENUMSET1_1 r2 r3 r4 ) ))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_45 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (=_XBOOLE_0_4 ((enum_ENUMSET1_5 r2 r2 r2 r2 r3 r4 r5 ) )((enum_ENUMSET1_2 r2 r3 r4 r5 ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_46 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (=_XBOOLE_0_4 ((enum_ENUMSET1_6 r2 r2 r2 r2 r3 r4 r5 r6 ) )((enum_ENUMSET1_3 r2 r3 r4 r5 r6 ) ))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_47 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (=_XBOOLE_0_4 ((enum_ENUMSET1_3 r2 r2 r2 r2 r2 ) )((enum_TARSKI_1 r2 ) ))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_48 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (=_XBOOLE_0_4 ((enum_ENUMSET1_4 r2 r2 r2 r2 r2 r3 ) )((enum_TARSKI_2 r2 r3 ) )))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_49 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (=_XBOOLE_0_4 ((enum_ENUMSET1_5 r2 r2 r2 r2 r2 r3 r4 ) )((enum_ENUMSET1_1 r2 r3 r4 ) ))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_50 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (=_XBOOLE_0_4 ((enum_ENUMSET1_6 r2 r2 r2 r2 r2 r3 r4 r5 ) )((enum_ENUMSET1_2 r2 r3 r4 r5 ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_51 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (=_XBOOLE_0_4 ((enum_ENUMSET1_4 r2 r2 r2 r2 r2 r2 ) )((enum_TARSKI_1 r2 ) ))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_52 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (=_XBOOLE_0_4 ((enum_ENUMSET1_5 r2 r2 r2 r2 r2 r2 r3 ) )((enum_TARSKI_2 r2 r3 ) )))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_53 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (=_XBOOLE_0_4 ((enum_ENUMSET1_6 r2 r2 r2 r2 r2 r2 r3 r4 ) )((enum_ENUMSET1_1 r2 r3 r4 ) ))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_54 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (=_XBOOLE_0_4 ((enum_ENUMSET1_5 r2 r2 r2 r2 r2 r2 r2 ) )((enum_TARSKI_1 r2 ) ))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_55 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (=_XBOOLE_0_4 ((enum_ENUMSET1_6 r2 r2 r2 r2 r2 r2 r2 r3 ) )((enum_TARSKI_2 r2 r3 ) )))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_56 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (=_XBOOLE_0_4 ((enum_ENUMSET1_6 r2 r2 r2 r2 r2 r2 r2 r2 ) )((enum_TARSKI_1 r2 ) ))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_57 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (=_XBOOLE_0_4 ((enum_ENUMSET1_1 r2 r3 r4 ) )((enum_ENUMSET1_1 r2 r4 r3 ) ))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_58 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (=_XBOOLE_0_4 ((enum_ENUMSET1_1 r2 r3 r4 ) )((enum_ENUMSET1_1 r3 r2 r4 ) ))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_59 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (=_XBOOLE_0_4 ((enum_ENUMSET1_1 r2 r3 r4 ) )((enum_ENUMSET1_1 r3 r4 r2 ) ))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_60 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (=_XBOOLE_0_4 ((enum_ENUMSET1_1 r2 r3 r4 ) )((enum_ENUMSET1_1 r4 r3 r2 ) ))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_61 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (=_XBOOLE_0_4 ((enum_ENUMSET1_2 r2 r3 r4 r5 ) )((enum_ENUMSET1_2 r2 r3 r5 r4 ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_62 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (=_XBOOLE_0_4 ((enum_ENUMSET1_2 r2 r3 r4 r5 ) )((enum_ENUMSET1_2 r2 r4 r3 r5 ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_63 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (=_XBOOLE_0_4 ((enum_ENUMSET1_2 r2 r3 r4 r5 ) )((enum_ENUMSET1_2 r2 r4 r5 r3 ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_64 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (=_XBOOLE_0_4 ((enum_ENUMSET1_2 r2 r3 r4 r5 ) )((enum_ENUMSET1_2 r2 r5 r4 r3 ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_65 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (=_XBOOLE_0_4 ((enum_ENUMSET1_2 r2 r3 r4 r5 ) )((enum_ENUMSET1_2 r3 r2 r4 r5 ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_66 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (=_XBOOLE_0_4 ((enum_ENUMSET1_2 r2 r3 r4 r5 ) )((enum_ENUMSET1_2 r3 r2 r5 r4 ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_67 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (=_XBOOLE_0_4 ((enum_ENUMSET1_2 r2 r3 r4 r5 ) )((enum_ENUMSET1_2 r3 r4 r2 r5 ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_68 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (=_XBOOLE_0_4 ((enum_ENUMSET1_2 r2 r3 r4 r5 ) )((enum_ENUMSET1_2 r3 r4 r5 r2 ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_69 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (=_XBOOLE_0_4 ((enum_ENUMSET1_2 r2 r3 r4 r5 ) )((enum_ENUMSET1_2 r3 r5 r2 r4 ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_70 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (=_XBOOLE_0_4 ((enum_ENUMSET1_2 r2 r3 r4 r5 ) )((enum_ENUMSET1_2 r3 r5 r4 r2 ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_71 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (=_XBOOLE_0_4 ((enum_ENUMSET1_2 r2 r3 r4 r5 ) )((enum_ENUMSET1_2 r4 r3 r2 r5 ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_72 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (=_XBOOLE_0_4 ((enum_ENUMSET1_2 r2 r3 r4 r5 ) )((enum_ENUMSET1_2 r4 r3 r5 r2 ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_73 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (=_XBOOLE_0_4 ((enum_ENUMSET1_2 r2 r3 r4 r5 ) )((enum_ENUMSET1_2 r4 r5 r2 r3 ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_74 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (=_XBOOLE_0_4 ((enum_ENUMSET1_2 r2 r3 r4 r5 ) )((enum_ENUMSET1_2 r4 r5 r3 r2 ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_75 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (=_XBOOLE_0_4 ((enum_ENUMSET1_2 r2 r3 r4 r5 ) )((enum_ENUMSET1_2 r5 r3 r4 r2 ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_76 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (=_XBOOLE_0_4 ((enum_ENUMSET1_2 r2 r3 r4 r5 ) )((enum_ENUMSET1_2 r5 r4 r3 r2 ) )))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_77 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r7,  imp (object_HIDDEN_1 r7) (`forall r8,  imp (object_HIDDEN_1 r8) (`forall r9,  imp (object_HIDDEN_1 r9) (`forall r10,  imp (object_HIDDEN_1 r10) (=_XBOOLE_0_4 ((enum_ENUMSET1_7 r2 r3 r4 r5 r6 r7 r8 r9 r10 ) )((∪_XBOOLE_0_2 (enum_TARSKI_1 r2 ) (enum_ENUMSET1_6 r3 r4 r5 r6 r7 r8 r9 r10 ) ) ))))))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_78 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r7,  imp (object_HIDDEN_1 r7) (`forall r8,  imp (object_HIDDEN_1 r8) (`forall r9,  imp (object_HIDDEN_1 r9) (`forall r10,  imp (object_HIDDEN_1 r10) (=_XBOOLE_0_4 ((enum_ENUMSET1_7 r2 r3 r4 r5 r6 r7 r8 r9 r10 ) )((∪_XBOOLE_0_2 (enum_TARSKI_2 r2 r3 ) (enum_ENUMSET1_5 r4 r5 r6 r7 r8 r9 r10 ) ) ))))))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_79 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r7,  imp (object_HIDDEN_1 r7) (`forall r8,  imp (object_HIDDEN_1 r8) (`forall r9,  imp (object_HIDDEN_1 r9) (`forall r10,  imp (object_HIDDEN_1 r10) (=_XBOOLE_0_4 ((enum_ENUMSET1_7 r2 r3 r4 r5 r6 r7 r8 r9 r10 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_1 r2 r3 r4 ) (enum_ENUMSET1_4 r5 r6 r7 r8 r9 r10 ) ) ))))))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_80 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r7,  imp (object_HIDDEN_1 r7) (`forall r8,  imp (object_HIDDEN_1 r8) (`forall r9,  imp (object_HIDDEN_1 r9) (`forall r10,  imp (object_HIDDEN_1 r10) (=_XBOOLE_0_4 ((enum_ENUMSET1_7 r2 r3 r4 r5 r6 r7 r8 r9 r10 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_2 r2 r3 r4 r5 ) (enum_ENUMSET1_3 r6 r7 r8 r9 r10 ) ) ))))))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_81 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r7,  imp (object_HIDDEN_1 r7) (`forall r8,  imp (object_HIDDEN_1 r8) (`forall r9,  imp (object_HIDDEN_1 r9) (`forall r10,  imp (object_HIDDEN_1 r10) (=_XBOOLE_0_4 ((enum_ENUMSET1_7 r2 r3 r4 r5 r6 r7 r8 r9 r10 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_3 r2 r3 r4 r5 r6 ) (enum_ENUMSET1_2 r7 r8 r9 r10 ) ) ))))))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_82 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r7,  imp (object_HIDDEN_1 r7) (`forall r8,  imp (object_HIDDEN_1 r8) (`forall r9,  imp (object_HIDDEN_1 r9) (`forall r10,  imp (object_HIDDEN_1 r10) (=_XBOOLE_0_4 ((enum_ENUMSET1_7 r2 r3 r4 r5 r6 r7 r8 r9 r10 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_4 r2 r3 r4 r5 r6 r7 ) (enum_ENUMSET1_1 r8 r9 r10 ) ) ))))))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_83 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r7,  imp (object_HIDDEN_1 r7) (`forall r8,  imp (object_HIDDEN_1 r8) (`forall r9,  imp (object_HIDDEN_1 r9) (`forall r10,  imp (object_HIDDEN_1 r10) (=_XBOOLE_0_4 ((enum_ENUMSET1_7 r2 r3 r4 r5 r6 r7 r8 r9 r10 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_5 r2 r3 r4 r5 r6 r7 r8 ) (enum_TARSKI_2 r9 r10 ) ) ))))))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_84 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r7,  imp (object_HIDDEN_1 r7) (`forall r8,  imp (object_HIDDEN_1 r8) (`forall r9,  imp (object_HIDDEN_1 r9) (`forall r10,  imp (object_HIDDEN_1 r10) (=_XBOOLE_0_4 ((enum_ENUMSET1_7 r2 r3 r4 r5 r6 r7 r8 r9 r10 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_6 r2 r3 r4 r5 r6 r7 r8 r9 ) (enum_TARSKI_1 r10 ) ) ))))))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_85 : Prf (`forall r2,  imp (object_HIDDEN_1 r2) (`forall r3,  imp (object_HIDDEN_1 r3) (`forall r4,  imp (object_HIDDEN_1 r4) (`forall r5,  imp (object_HIDDEN_1 r5) (`forall r6,  imp (object_HIDDEN_1 r6) (`forall r7,  imp (object_HIDDEN_1 r7) (`forall r8,  imp (object_HIDDEN_1 r8) (`forall r9,  imp (object_HIDDEN_1 r9) (`forall r10,  imp (object_HIDDEN_1 r10) (`forall r11,  imp (object_HIDDEN_1 r11) (=_XBOOLE_0_4 ((enum_ENUMSET1_8 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 ) )((∪_XBOOLE_0_2 (enum_ENUMSET1_7 r2 r3 r4 r5 r6 r7 r8 r9 r10 ) (enum_TARSKI_1 r11 ) ) )))))))))))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_86 : Prf (`forall b549, `forall b550, `forall b551,  imp (and (and (set_HIDDEN_2 b549) (set_HIDDEN_2 b550)) (set_HIDDEN_2 b551)) (imp (and (≠_HIDDEN_2 b549 b550 ) (≠_HIDDEN_2 b549 b551 )) (=_XBOOLE_0_4 ((\_XBOOLE_0_4 (enum_ENUMSET1_1 b549 b550 b551 ) (enum_TARSKI_1 b549 ) ) )((enum_TARSKI_2 b550 b551 ) )))) ≔ 
begin
  abort;

opaque symbol Th_ENUMSET1_87 : Prf (`forall b560, `forall b561, `forall b562,  imp (and (and (set_HIDDEN_2 b560) (set_HIDDEN_2 b561)) (set_HIDDEN_2 b562)) (=_XBOOLE_0_4 ((∪_XBOOLE_0_2 (enum_TARSKI_2 b561 b560 ) (enum_TARSKI_2 b562 b560 ) ) )((enum_ENUMSET1_1 b560 b561 b562 ) ))) ≔ 
begin
  abort;
