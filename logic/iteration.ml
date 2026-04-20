(* Iteration Patterns

   Two common patterns for repeated application of a function.
   The difference: do you know in advance how many steps to take? *)


(* Definite Iteration

   Apply a function exactly n times to a starting value.
   The number of steps is fixed before the computation begins. *)

let rec iter (f : int -> int) (n : int) (start : int) : int =
  if n < 1 then start else iter f (n - 1) (f start)

(* iter (fun a -> a * 2) 3 1
     step 1: 1 -> 2
     step 2: 2 -> 4
     step 3: 4 -> 8
   result: 8

   Note: iter is tail recursive. The result of the recursive call
   is returned directly, with no pending work on top of it. *)

(* Power function via definite iteration: multiply by x exactly n times *)
let power (x : int) (n : int) = iter (fun a -> a * x) n 1


(* Indefinite Iteration

   Keep applying increments to a starting value until a predicate holds.
   The number of steps is not known in advance — it depends on the data. *)

let rec first (pred : int -> bool) (start : int) : int =
  if pred start then start else first pred (start + 1)

(* first (fun k -> k * k > 15) 1
     k=1: 1 > 15? no
     k=2: 4 > 15? no
     k=3: 9 > 15? no
     k=4: 16 > 15? yes -> return 4

   Note: first is also tail recursive, but unlike iter it may diverge.
   If the predicate never becomes true, it runs forever. *)

(* Natural square root via indefinite iteration *)
let sqrt (x : int) = (first (fun k -> k * k > x) 1) - 1
