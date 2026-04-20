(* Divergence

   A computation either terminates (reaches a result in finite steps)
   or diverges (runs forever). Divergence is not always the same thing
   as crashing.

   Example 1: p, tail recursive divergence *)

let rec p (x : int) : int = p x

(* p 1 -> p 1 -> p 1 -> ...
   Infinite loop. But because it is tail recursive, the stack frame
   is reused on every call. The program hangs, but no stack overflow. *)


(* Example 2: q, non-tail recursive divergence *)

let rec q (x : int) : int = 0 + q x

(* q 1 -> 0 + (q 1) -> 0 + (0 + (q 1)) -> ...
   Also an infinite loop, but not tail recursive. The pending addition
   keeps growing the call stack. Eventually: stack overflow. *)


(* The key distinction is not whether they diverge (both do),
   but how they diverge.

   p: stack stays flat, hangs indefinitely
   q: stack grows on every call, crashes

   This connects back to tail recursion: being tail recursive does
   not make a function correct. It only protects the stack.
   Without a base case, even a tail recursive function diverges.

   Correctness and efficiency are separate concerns:
     base case    -> correctness (termination)
     tail recursive -> efficiency (stack) *)
