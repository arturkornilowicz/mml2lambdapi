/********************************************************************
 An encoding of TLA+ predicate logic in LambdaPi. The primitive
 symbols are 
 - equality, 
 - true, false, and if-then-else for propositional logic,
 - and Hilbert's choice as the primitive binder.

 Author: Stephan Merz
 Copyright Inria 2022
 MIT License
********************************************************************/

// Type representing the TLA+ universe.
constant symbol U : TYPE;

// Provability predicate.
injective symbol Prf : U → TYPE;

/*** Equational logic ***/
symbol = : U → U → U;
notation = infix 1;

// Axioms: reflexivity and Leibniz rule
constant symbol refl : Π x, Prf (x = x);
constant symbol subst : Π x y p, Prf (x = y) → Prf (p y) → Prf (p x);

opaque symbol sym x y : Prf (x = y) → Prf (y = x) ≔
begin
    assume x y pxy;
    apply subst x y (λ z, y = z) pxy (refl y)
end;

opaque symbol ssubst x y p : Prf (x = y) → Prf (p x) → Prf (p y) ≔
begin
    assume x y p pxy ppx;
    apply subst y x p (sym x y pxy) ppx
end;

opaque symbol trans x y z : Prf (x = y) → Prf (y = z) → Prf (x = z) ≔
begin
    assume x y z pxy pyz;
    apply subst x y (λ u, u = z) pxy pyz
end;

/*** Propositional logic ***/
constant symbol true : U;
constant symbol false : U;
symbol ite : U → U → U → U;

// axioms for these connectives
// true is provable, and nothing else is
constant symbol trivial : Prf true;
constant symbol prfTrue : Π x, Prf x → Prf (x = true);
// false is an absurdity
constant symbol absurd : Π x, Prf false → Prf x;
// equality is Boolean
constant symbol eqBoolean : Π x y, (Prf (x = y) → Prf false) → Prf ((x = y) = false);
// reduce provability of a conditional to provability of its branches
constant symbol iteI : Π c t e p, 
                           (Prf c → Prf (p t))
                         → ((Prf c → Prf false) → Prf (p e))
                         → Prf (p (ite c t e));

opaque symbol reflTrue x : Prf ((x = x) = true) ≔
begin
    assume x;
    apply prfTrue (x = x) (refl x)
end;

// Corresponding rewrite rule.
rule $x = $x ↪ true;

opaque symbol eqTrueD p : Prf (p = true) → Prf p ≔
begin
    assume p ppt;
    refine subst p true (λ u, u) ppt trivial
end;

opaque symbol iteTrue t e : Prf(ite true t e = t) ≔
begin
    assume t e;
    apply iteI true t e (λ u, u = t)
    {   assume _; apply refl t }
    {   assume ptf;
        apply absurd (e = t) (ptf trivial);
    }
end;

opaque symbol iteFalse t e : Prf(ite false t e = e) ≔
begin
    assume t e;
    apply iteI false t e (λ u, u = e)
    {   refine absurd (t = e)}
    {   assume _; apply refl e}
end;

// The following theorem confirms that we have a classical logic.
opaque symbol iteSame c t : Prf (ite c t t = t) ≔
begin
    assume c t;
    apply iteI c t t (λ u, u = t)
    { assume _; apply refl t }
    { assume _; apply refl t }
end;

// The four preceding lemmas can be useful rewrite rules.
rule Prf ($p = true) ↪ Prf $p;
rule ite true $t _ ↪ $t;
rule ite false _ $e ↪ $e;
rule ite _ $t $t ↪ $t;

opaque symbol iteT c t e p : Prf(p (ite c t e)) → Prf c → Prf(p t) ≔
begin
    assume c t e p pfite pfc;
    have ct: Prf (true = c)
    { apply sym c true (prfTrue c pfc) };
    have itt: Prf(p (ite true t e))
    { apply subst true c (λ u, p (ite u t e)) ct pfite };
    apply ssubst (ite true t e) t p (iteTrue t e) itt
end;


/*** Derived propositional connectives ***/
/**
  Note that these connectives always return true or false.
  For example, we do not define (imp x y) as (ite x y true).

  Also, we do not use LambdaPi's definition mechanism and write, e.g.
    symbol not x : U ≔ ite x false true
  because a subsequent application of "simplify" would then expand
  these definitions, whereas writing
    opaque symbol not x : U ≔ ite x false true
  would entirely prevent the definition from being expanded, even
  when writing "simplify not".
  Instead, we give explicit definitional axioms for each of these
  connectives and then derive the standard logic proof rules. This
  lets us use LambdaPi's simplification mechanism for applying
  rewrite rules without expanding defined operators.
  It would be nice if LambdaPi did not conflate equational
  definitions and explicit rewrite rules, or if there were an
  attribute for indicating definitions that should be used as
  rewrite rules, similar to the [simp] attribute in Isabelle.
**/
symbol not : U → U;
constant symbol not-def x : Prf (not x = ite x false true);
symbol and : U → U → U;
constant symbol and-def x y : Prf (and x y = ite x (ite y true false) false);
symbol or : U → U → U;
constant symbol or-def x y : Prf (or x y = ite x true (ite y true false));
symbol imp : U → U → U;
constant symbol imp-def x y : Prf (imp x y = ite x (ite y true false) true);
symbol iff : U → U → U;
constant symbol iff-def x y : Prf (iff x y = and (imp x y) (imp y x));

symbol ≠ : U → U → U;
notation ≠ infix 1;
rule $x ≠ $y ↪ not ($x = $y);

// Derived proof rules for propositional connectives.
opaque symbol notTrue : Prf(not true = false) ≔
begin
    apply subst (not true) (ite true false true) (λ x, x = false) (not-def true);
    apply iteTrue false true
end;

opaque symbol notFalse : Prf(not false = true) ≔
begin
    apply subst (not false) (ite false false true) (λ x, x = true) (not-def false);
    apply iteFalse false true
end;

// Rewrite rules justified by these lemmas
rule not true ↪ false;
rule not false ↪ true;

opaque symbol notI p : (Prf p → Prf false) → Prf(not p) ≔
begin
    assume p pf;
    apply subst (not p) (ite p false true) (λ z, z) (not-def p);
    apply iteI p false true (λ z, z)
    {  assume pp; apply pf pp }
    {  assume _; apply trivial }
end;

opaque symbol notE p q : Prf (not p) → Prf p → Prf q ≔
begin
    assume p q pnp pp;
    have pite: Prf (ite p false true)
    {  apply ssubst (not p) (ite p false true) (λ z, z) (not-def p) pnp  };
    have f: Prf false 
    {  apply iteT p false true (λ z, z) pite pp  };
    apply absurd _ f
end;

opaque symbol trueNeqFalse : Prf (true ≠ false) ≔
begin
    apply notI (true = false);
    assume tf;
    apply ssubst true false (λ z, z) tf trivial
end;

opaque symbol iteE c t e p : Prf (p (ite c t e)) → Prf (not c) → Prf (p e) ≔
begin
    assume c t e p pite pnc;
    apply ssubst (ite c t e) e p _ pite;
    apply iteI c t e (λ u, u = e)
    { assume pc; apply notE c (t = e) pnc pc }
    { assume _; apply refl e } 
end;

opaque symbol caseSplit p q : (Prf p → Prf q) → (Prf (not p) → Prf q) → Prf q ≔
begin
    assume p q pq npq;
    have i: Prf (ite p q q)
    { apply iteI p q q (λ u, u) pq;
      assume pf;
      apply npq (notI p pf)
    };
    apply ssubst (ite p q q) q (λ u, u) (iteSame p q) i
end;

// proof by contradiction
opaque symbol ccontr p : (Prf (not p) → Prf false) → Prf p ≔
begin
    assume p npf;
    apply caseSplit p p
    { assume pp; apply pp }
    { assume pnp; apply absurd p (npf pnp) }
end;

opaque symbol notnotI p : Prf p → Prf (not (not p)) ≔
begin
    assume p pp;
    apply notI (not p);
    assume pnp;
    apply notE p false pnp pp 
end;

opaque symbol notnotD p : Prf (not (not p)) → Prf p ≔
begin
    assume p nnp;
    apply caseSplit p p
    { assume pp; apply pp }
    { assume np; apply notE (not p) p nnp np }
end;

opaque symbol andI p q : Prf p → Prf q → Prf (and p q) ≔
begin
    assume p q pp pq;
    apply subst (and p q) (ite p (ite q true false) false) (λ z, z) (and-def p q);
    apply iteI p (ite q true false) false (λ u, u)
    { assume _;
      apply iteI q true false (λ u, u)
      { assume _; apply trivial }
      { assume qf; apply qf pq }
    }
    { assume pf; apply pf pp }
end;

opaque symbol andE p q r : Prf (and p q) → (Prf p → Prf q → Prf r) → Prf r ≔
begin
    assume p q r pand pqr;
    have pite: Prf (ite p (ite q true false) false)
    {  apply ssubst (and p q) (ite p (ite q true false) false) (λ z, z) (and-def p q) pand  };
    apply caseSplit p r
    {  assume pp;
       have qite: Prf (ite q true false)
       {  apply iteT p (ite q true false) false (λ z, z) pite pp };
       apply caseSplit q r
       {  assume pq; apply pqr pp pq  }
       {  assume pnq; 
          have f: Prf false
          {  apply iteE q true false (λ z, z) qite pnq };
          apply absurd r f
       }
    }
    {  assume pnp;
       have f: Prf false
       {  apply iteE p (ite q true false) false (λ z,z) pite pnp };
       apply absurd r f
    }
end;

opaque symbol andD1 p q : Prf (and p q) → Prf p ≔
begin
    assume p q pand;
    apply andE p q _ pand;
    assume pp _;
    apply pp
end;

opaque symbol andD2 p q : Prf (and p q) → Prf q ≔
begin
    assume p q pand;
    apply andE p q _ pand;
    assume _ pq;
    apply pq
end;

opaque symbol orI1 p q : Prf p → Prf (or p q) ≔
begin
    assume p q pp;
    apply subst (or p q) (ite p true (ite q true false)) (λ z, z) (or-def p q);
    apply iteI p true (ite q true false) (λ z, z)
    {  assume _; apply trivial }
    {  assume ppf; apply absurd (ite q true false) (ppf pp) }
end;

opaque symbol orI2 p q : Prf q → Prf (or p q) ≔
begin
    assume p q pq;
    apply subst (or p q) (ite p true (ite q true false)) (λ z, z) (or-def p q);
    apply iteI p true (ite q true false) (λ u, u)
    { assume _; apply trivial }
    { assume _; 
      refine iteI q true false (λ u, u) _ _ 
      { assume _; apply trivial }
      { assume qf; apply qf pq }
    }
end;

// classical rule for introducing a disjunction
opaque symbol orCI p q : (Prf (not p) → Prf q) → Prf (or p q) ≔
begin
    assume p q npq;
    refine caseSplit p (or p q) (orI1 p q) _;
    assume np;
    apply (orI2 p q (npq np))
end;

opaque symbol orE p q r : Prf (or p q) → (Prf p → Prf r) → (Prf q → Prf r) → Prf r ≔
begin
    assume p q r por ppr pqr;
    apply caseSplit p r ppr;
    assume pnp;
    apply caseSplit q r pqr;
    assume pnq;
    have pite: Prf (ite p true (ite q true false))
    {  apply ssubst (or p q) (ite p true (ite q true false)) (λ z, z) (or-def p q) por };
    have qite: Prf (ite q true false)
    {  apply iteE p true (ite q true false) (λ z, z) pite pnp };
    apply absurd r (iteE q true false (λ u, u) qite pnq)
end;

opaque symbol impI p q : (Prf p → Prf q) → Prf (imp p q) ≔
begin
    assume p q pq;
    apply subst (imp p q) (ite p (ite q true false) true) (λ z, z) (imp-def p q);
    apply iteI p (ite q true false) true (λ q, q)
    { assume pp; 
      apply iteI q true false (λ q, q)
      { assume _; apply trivial }
      { assume qf; apply qf (pq pp) }
    }
    { assume _; apply trivial }
end;

// modus ponens
opaque symbol mp p q : Prf (imp p q) → Prf p → Prf q ≔
begin
    assume p q pimp pp;
    have pite: Prf (ite p (ite q true false) true)
    {  apply ssubst (imp p q) (ite p (ite q true false) true) (λ z, z) (imp-def p q) pimp };
    have qite: Prf (ite q true false)
    {  apply iteT p (ite q true false) true (λ z, z) pite pp };
    apply caseSplit q q
    {  assume pq; apply pq  }
    {  assume pnq; apply absurd q; apply iteE q true false (λ z, z) qite pnq }
end;

opaque symbol contrapos p q : Prf (imp p q) → Prf (not q) → Prf (not p) ≔
begin
    assume p q pimp pnq;
    apply notI p;
    assume pp;
    have pq: Prf q
    {  apply mp p q pimp pp  };
    apply notE q false pnq pq
end;

// classical elimination rule for implication
opaque symbol impCE p q r : Prf (imp p q) → (Prf (not p) → Prf r) → (Prf q → Prf r) → Prf r ≔
begin
    assume p q r pimp pnpr pqr;
    apply caseSplit p r
    { assume pp; apply pqr (mp p q pimp pp)  }
    { refine pnpr }
end;

opaque symbol iffI p q : (Prf p → Prf q) → (Prf q → Prf p) → Prf (iff p q) ≔
begin
    assume p q pq qp;
    apply subst (iff p q) (and (imp p q) (imp q p)) (λ z, z) (iff-def p q);
    apply andI (imp p q) (imp q p) (impI p q pq) (impI q p qp)
end;

opaque symbol iffE p q r : Prf (iff p q) → (Prf (imp p q) → Prf (imp q p) → Prf r) → Prf r ≔
begin
    assume p q r piff pqqpr;
    have pand: Prf (and (imp p q) (imp q p))
    {  apply ssubst (iff p q) (and (imp p q) (imp q p)) (λ z, z) (iff-def p q) piff };
    apply andE (imp p q) (imp q p) r pand pqqpr
end;

// classical elimination rule
opaque symbol iffCE p q r : Prf (iff p q)
                          → (Prf p → Prf q → Prf r)  // r provable if both true
                          → (Prf (not p) → Prf (not q) → Prf r)  // ... or if both false
                          → Prf r ≔
begin
    assume p q r piff ppos pneg;
    apply iffE p q r piff;
    assume ppq pqp;
    apply caseSplit p r
    {  assume pp; apply ppos pp (mp p q ppq pp)  }
    {  assume pnp; apply pneg pnp (contrapos q p pqp pnp)  }
end;

/*** First-order logic ***/
/* We take Hilbert's choice as the primitive binder in the predicate
   logic of TLA+. This operator is characterized by two axioms:
   - If p x holds for some x, then choose p is some value satisfying p.
   - Choice is deterministic: if two predicates p and q are equivalent
     everywhere then choose p = choose q.
*/
symbol choose : (U → U) → U;
notation choose quantifier;
constant symbol chooseI : 
    Π p x, Prf (p x) → Prf (p (choose p));
constant symbol chooseDet : 
    Π p q, (Π x, Prf (iff (p x) (q x))) → Prf (choose p = choose q);

/* Existential and universal quantification are introduced as derived
   connectives. Again, we make sure that they return either true or false.
*/
symbol exists : (U → U) → U;
notation exists quantifier;
constant symbol exists-def p : Prf (exists p = (p (`choose x, p x = true) = true));
symbol forall : (U → U) → U;
notation forall quantifier;
constant symbol forall-def p : Prf (forall p = not (`exists x, not (p x)));

opaque symbol exI p x : Prf (p x) → Prf (exists p) ≔
begin
    assume p x px;
    apply subst (exists p) (p (`choose x, p x = true) = true) (λ z, z) (exists-def p);
    have pxt: Prf (p x = true)
    { apply prfTrue (p x) px };
    apply chooseI (λ x, p x = true) x pxt
end;

opaque symbol exE p q : Prf (exists p) → (Π x, Prf (p x) → Prf q) → Prf q ≔
begin
    assume p q pex ppq;
    have pch: Prf (p (`choose x, p x = true) = true)
    {  apply ssubst (exists p) (p (`choose x, p x = true) = true) (λ z, z) (exists-def p) pex  };
    apply ppq _ (eqTrueD (p (`choose x, p x = true)) pch)
end;

opaque symbol allI p : (Π x, Prf (p x)) → Prf (forall p) ≔
begin
    assume p pp;
    apply subst (forall p) (not (`exists x, not (p x))) (λ z, z) (forall-def p);
    apply notI (exists (λ x, not (p x)));
    assume penp;
    apply exE (λ x, not (p x)) false penp;
    assume x pnpx;
    apply notE (p x) false pnpx (pp x)
end;

opaque symbol allE p x : Prf (forall p) → Prf (p x) ≔
begin
    assume p x pall;
    have pnex: Prf (not (`exists x, not (p x)))
    {  apply ssubst (forall p) (not (`exists x, not (p x))) (λ z, z) (forall-def p) pall  };
    apply ccontr (p x);
    assume pnpx;
    apply notE (exists (λ x, not (p x))) false pnex;
    apply exI (λ x, not (p x)) x pnpx
end;

// The following rule is more useful than the basic axiom chooseI
// for introducing a choose.
opaque symbol chooseI2Ex p q : Prf (exists p) → (Π x, Prf (p x) → Prf (q x)) → Prf (q (choose p)) ≔
begin
    assume p q pep ppq;
    have pcp: Prf (p (choose p))
    { apply exE p (p (choose p)) pep;
      assume x ppx;
      apply chooseI p x ppx
    };
    apply ppq (choose p) pcp
end;

// a useful instance of the above
opaque symbol chooseEq p a : Prf (exists p) → (Π x, Prf (p x) → Prf(x = a)) → Prf (choose p = a) ≔
   chooseI2Ex p (λ x, x = a);

