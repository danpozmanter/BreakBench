let lock = Mutex.create ()
let balance = ref 100

(* OCaml has no early return; the unlock follows the conditional on every path. *)
let withdraw amount =
  Mutex.lock lock;
  if amount <= !balance then balance := !balance - amount;
  Mutex.unlock lock

let () =
  withdraw 500;
  let worker = Thread.create withdraw 30 in
  Thread.join worker;
  print_int !balance;
  print_newline ()
