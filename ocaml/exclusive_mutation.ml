type account = { mutable balance : int }

let transfer src dst amount = (* CONTROL! let transfer src dst amount = if src != dst then begin *)
  let new_from = src.balance - amount in
  let new_to = dst.balance + amount in
  src.balance <- new_from;
  dst.balance <- new_to (* CONTROL! dst.balance <- new_to end *)

let () =
  let a = { balance = 100 } in
  transfer a a 30;
  print_int a.balance;
  print_newline ()
