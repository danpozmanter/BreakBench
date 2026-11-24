let a = Mutex.create ()
let b = Mutex.create ()
let gate_mutex = Mutex.create () (* BREAK! *)
let gate_cond = Condition.create () (* BREAK! *)
let arrivals = ref 0 (* BREAK! *)

let rendezvous () = (* BREAK! *)
  Mutex.lock gate_mutex; (* BREAK! *)
  incr arrivals; (* BREAK! *)
  if !arrivals = 2 then Condition.broadcast gate_cond (* BREAK! *)
  else while !arrivals < 2 do Condition.wait gate_cond gate_mutex done; (* BREAK! *)
  Mutex.unlock gate_mutex (* BREAK! *)

let transfer first second =
  Mutex.lock first;
  rendezvous (); (* BREAK! *)
  Mutex.lock second;
  Mutex.unlock second;
  Mutex.unlock first

let () =
  let t1 = Thread.create (fun () -> transfer a b) () in
  let t2 = Thread.create (fun () -> transfer b a) () in (* CONTROL! let t2 = Thread.create (fun () -> transfer a b) () in *)
  Thread.join t1;
  Thread.join t2;
  print_endline "finished"
