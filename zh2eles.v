(*
Mathematical logic Midterm Test II.
2024.12.11.

Name:  

Neptun code:  

Send the solutions to this email:
bodri.mh3@gmail.com
*)

Require Import Classical.
Section midterm2.

Variables P Q R W: Prop.


Section ex1.
Hypothesis pr1: P->Q.
Hypothesis pr2: R\/P.
Hypothesis pr3: ~(Q\/R).
Goal  False.
Proof.
(*Write your proof here*)

Abort.
(* you can replace Abort by Qed
   when the proof is finished *)
End ex1.

Section ex2.
Hypothesis p1: ~(P\/Q).
Goal P<->Q.
Proof.
(*Write your proof here*)

Abort.
(* you can replace Abort by Qed
   when the proof is finished *)
End ex2.


Section ex3.
Hypothesis pr1: P/\Q->~R.
Hypothesis p3: R.
Goal  ~(Q/\P).
Proof.
(*Write your proof here*)

Abort.
(* you can replace Abort by Qed
   when the proof is finished *)
End ex3.


Section ex4.
Variable UD: Set.
Variable A B C: UD->Prop.
Hypothesis pr1: forall x, B x -> ~ C x.
Hypothesis pr2: forall x, A x -> B x.
Goal forall x, A x -> ~ C x.
Proof.
(*Write your proof here*)

Abort.
(* you can replace Abort by Qed
   when the proof is finished *)
End ex4.

End midterm2.

