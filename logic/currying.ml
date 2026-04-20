(* Currying

   In OCaml, every function takes exactly one argument. A function
   that appears to take multiple arguments is actually a chain of
   functions, each taking one argument and returning the next function.

   This is not a quirk. It is how the language works at its core. *)


(* Five ways to write the same function *)

let f (x : int) (y : int) (z : int) = x + y + z
(* Most concise. This is syntactic sugar for everything below. *)

let f1 (x : int) (y : int) = fun (z : int) -> x + y + z
(* Last argument peeled off into an explicit abstraction. *)

let f2 (x : int) = fun (y : int) -> fun (z : int) -> x + y + z
(* Two last arguments peeled off. *)

let f3 = fun (x : int) -> fun (y : int) -> fun (z : int) -> x + y + z
(* Fully expanded. This is what the compiler sees for all of the above.

   Important: the inner functions do not receive x and y as arguments.
   They see x and y because those names are in scope at the point where
   the inner functions are defined. Each inner function closes over the
   surrounding scope and carries those bindings with it. This is called
   a closure. Nothing is "passed down" through arguments. *)

(* All four are identical in behavior and type. *)


(* Reading the type

   int -> int -> int -> int

   The arrow is right-associative, so this really means:
   int -> (int -> (int -> int))

   Step by step:
     f takes one int, returns a function of type int -> int -> int
     that function takes one int, returns a function of type int -> int
     that function takes one int, returns an int *)


(* Partial application

   Because each step just returns a function, you can stop at any point. *)

let add5    = f 5      (* type: int -> int -> int, x is fixed as 5 *)
let add5_3  = f 5 3    (* type: int -> int,        x=5 and y=3 fixed *)
let result  = f 5 3 2  (* type: int = 10,          fully applied *)

(* add5 is a real function you can reuse. This is partial application,
   and it falls out of currying for free. No special syntax needed. *)


(* Summary

   The multi-argument syntax is sugar. The real form is a chain of
   single-argument abstractions. The type reflects this chain exactly,
   reading right to left with each arrow representing one step.

   Currying is what makes partial application possible in OCaml. *)
