(* ===== DEFINITE ITERATION ===== *)

let rec iter (f : int -> int) (n : int) (start : int) : int =
  if n < 1 then start else iter f (n - 1) (f start);;

let double_n_times n = iter (fun x -> x * 2) n;;

let add_step step = iter (fun x -> x + step);;
let count_by_3 = add_step 3;;


(* ===== INDEFINITE ITERATION ===== *)

let rec first (pred : int -> bool) (start : int) : int =
  if pred start then start else first pred (start + 1);;

let first_divisible_by n start =
  first (fun x -> x mod n = 0) start;;

let first_perfect_square start =
  let is_square x =
    let s = int_of_float (sqrt (float_of_int x)) in
    s * s = x
  in
  first is_square start;;

let natural_sqrt n = (first (fun k -> k * k > n) 1) - 1;;


(* ===== RUN ===== *)

Printf.printf "1 doubled 4 times: %d\n"            (double_n_times 4 1);;
Printf.printf "count_by_3, 5 steps from 0: %d\n"   (count_by_3 5 0);;
Printf.printf "\nFirst multiple of 7 from 50: %d\n" (first_divisible_by 7 50);;
Printf.printf "First perfect square from 20: %d\n"  (first_perfect_square 20);;
Printf.printf "floor(sqrt(50)): %d\n"               (natural_sqrt 50);;
