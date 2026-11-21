let lock = Mutex.create ()
let balance = ref 0

let deposit amount =
  Mutex.lock lock;
  balance := !balance + amount;
  Mutex.unlock lock

let () =
  Mutex.lock lock;
  deposit 10;
  Mutex.unlock lock;
  print_endline "done"
