(* Accumulator Pattern

   The core idea: carry an extra argument through recursive calls
   to track progress or accumulate a result. Without it, each call
   has no memory of what came before.

   Example: computing floor(√n)

   We want the largest k such that k^2 <= n.
   We start from k=1 and increment until k^2 overshoots n,
   then step back by one.

   w(k, n) = the smallest i >= k such that i^2 > n
*)

let rec w ((k : int), (n : int)) : int =
  if k * k > n then k else w (k + 1, n)

(* w(1, n) returns the first k that overshoots, so subtracting 1 lands on floor(sqrt(n)).

   n = 8:
     k=1, 1^2=1  -> keep going
     k=2, 2^2=4  -> keep going
     k=3, 3^2=9  -> overshoot, return 3

   sqrt(8) = 3 - 1 = 2  (correct, since sqrt(8) ~ 2.83)
*)

let sqrt (n : int) = w (1, n) - 1

(* k is the accumulator: it is updated on every call and carries
   the state forward until the base case is reached. *)
