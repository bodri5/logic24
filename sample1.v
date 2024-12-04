Require Import Classical.


Section eqv.

Variables P Q R S E U W: Prop.

Section exercise1a.
Hypothesis pr1: P -> Q.
Hypothesis pr2: Q -> R.
Hypothesis pr3: R -> P.
Goal P <-> R.

Abort.
End exercise1a.

Section exercise1a.
Hypothesis pr1: P <-> Q.
Hypothesis pr2: Q /\ R -> S.
Goal P /\ R -> S.
rewrite pr1.
Abort.
End exercise1a.

Section exercise1c.
Hypothesis pr1: P <-> Q.
Hypothesis pr2: Q /\ R -> P \/ S.
Goal P /\ R -> Q \/ S.
Abort.
End exercise1c.




Section exercise2a.
Goal P/\Q <-> Q/\P.

Abort.
End exercise2a.

Section exercise2b.
Goal P/\(Q\/R) <-> (P/\Q)\/(P/\R).

Abort.
End exercise2b.

Section exercise2c.
Goal P\/(Q/\R) <-> (P\/Q)/\(P\/R).

Abort.
End exercise2c.
End eqv.

Section samples.

Variables P Q R S E U W: Prop.

Section exercise1a.
Hypothesis pr1: S -> P.
Hypothesis pr2: S -> E.
Hypothesis pr3: (P \/ E) -> Q.
Goal S -> Q.

Abort.
End exercise1a.



Section exercise2a.
Hypothesis pr1: P /\ (Q /\ R).
Hypothesis pr2: (S /\ E) /\ U.
Hypothesis pr3: E -> W.
Goal (Q /\ P) /\ W.

Abort.
End exercise2a.


Section exercise2b.
Hypothesis pr1: Q.
Hypothesis pr2: Q->P \/ R.
Hypothesis pr3: R->S.
Goal P\/S.

Abort.
End exercise2b.


Section exercise2c.
Hypothesis pr1: S->P.
Hypothesis pr2: Q -> E.
Goal (P->Q) -> (S->E).

Abort.
End exercise2c.


Section exercise2d.

Hypothesis pr1: (P \/ ~S) <-> (R /\ S ).
Hypothesis pr2: R->S.
Goal R -> P.

Abort.
End exercise2d.

End samples.

Section samplesQ.
Variable UD: Set.
Variable A B C: UD -> Prop.

Section celarent.
Hypothesis pr1: forall x, B x -> ~ C x.
Hypothesis pr2: forall x, A x -> B x.
Goal forall x, A x -> ~ C x.

Abort.
End celarent.

Section dabitis.
Hypothesis pr1: forall x, B x -> C x.
Hypothesis pr2: exists x, A x /\ B x.
Goal exists x, C x /\ A x.

Abort.
End dabitis.

Section chinese.
Variable S E U P K: UD -> Prop.
Hypothesis pr1: forall x, C x -> ~ S x.
Hypothesis pr2: forall x, ~ E x -> U x.
Hypothesis pr3: forall x, E x -> P x.
Hypothesis pr4: forall x, U x -> K x.
Hypothesis pr5: forall x, P x -> S x.
Goal forall x, C x -> K x.

Abort.
End chinese.

Section bad.
Variable R: UD->UD -> Prop.
Hypothesis j:UD. (*j is a constant*)
Hypothesis pr1: exists x y, R x y \/ R y x.
Goal R j j.

Abort.
End bad.
End samplesQ.

Section ex2.
Variables P:Prop.
(*This one is harder than you think!*)
Goal ~~P <-> P.
Proof.
Abort.
End ex2.
