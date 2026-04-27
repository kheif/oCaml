(* ===== DEFINITE ITERATION ===== *)

(* 1. iter: applies f exactly n times to a starting value
   Takes a function f, a step count n, and a start value
   Hint: use let rec, if n < 1 return start, otherwise recurse with (f start) *)


(* 2. double_n_times: using iter, double a number exactly n times *)
(* Hint: partial application; fix the step function, leave n and start open *)


(* 3. add_step: using iter, adds a fixed step value n times to a start
   Hint: partial application again; count_by_3 should work as: count_by_3 5 0 = 15 *)


(* ===== INDEFINITE ITERATION ===== *)

(* 4. first: returns the smallest integer >= start for which pred holds
   Hint: use let rec, if pred start then return start, else recurse with (start + 1) *)


(* 5. first_divisible_by: using first, find the first number >= start divisible by n *)
(* Hint: use mod *)


(* 6. first_perfect_square: using first, find the first perfect square >= start *)
(* Hint: a number x is a perfect square if floor(sqrt(x))^2 = x
   Use int_of_float and sqrt (remember: sqrt takes a float) *)


(* 7. natural_sqrt: compute floor(sqrt(n)) using first *)
(* Hint: find the first k where k*k > n, then subtract 1 *)


(* ===== RUN ===== *)

(* Print: 1 doubled 4 times *)

(* Print: count_by_3, 5 steps from 0 *)

(* Print: first multiple of 7 starting from 50 *)

(* Print: first perfect square starting from 20 *)

(* Print: floor(sqrt(50)) *)
