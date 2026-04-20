(* ===== TYPES ===== *)

(* Define a sum type called account_type with 3 variants: Checking, Savings, Student *)


(* ===== DATA ===== *)

(* Define an account tuple: (owner: string, balance: float, account_type) *)
(* Create at least 3 accounts with different types *)


(* Create a list of all accounts *)


(* ===== FUNCTIONS ===== *)

(* 1. interest_rate: takes an account_type, returns the interest rate as float *)
(* Savings -> 0.05, Checking -> 0.02, Student -> 0.0 *)
(* Hint: use match *)


(* 2. apply_interest: takes an account tuple, returns new balance after interest *)
(* Hint: use interest_rate inside, use let...in for intermediate steps *)


(* 3. deposit: takes an account tuple and an amount (float), returns new balance *)


(* 4. withdraw: takes an account tuple and an amount (float), returns new balance *)
(* If balance is sufficient, subtract amount. Otherwise return balance unchanged *)
(* Hint: use if/else *)


(* 5. total_balance: takes a list of accounts, returns sum of all balances *)
(* Hint: use let rec and match with head :: tail *)


(* ===== RUN ===== *)

(* Print the results of apply_interest for each account *)

(* Print total_balance of all accounts *)
