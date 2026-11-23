let a = Mutex.create ()
let b = Mutex.create ()
let gate_mutex = Mutex.create ()
let gate_cond = Condition.create ()
let arrivals = ref 0

let rendezvous () =
  Mutex.lock gate_mutex;
  incr arrivals;
  if !arrivals = 2 then Condition.broadcast gate_cond
  else while !arrivals < 2 do Condition.wait gate_cond gate_mutex done;
  Mutex.unlock gate_mutex

let transfer first second =
  Mutex.lock first;
  rendezvous ();
  Mutex.lock second;
  Mutex.unlock second;
  Mutex.unlock first

let () =
  let t1 = Thread.create (fun () -> transfer a b) () in
  let t2 = Thread.create (fun () -> transfer b a) () in
  Thread.join t1;
  Thread.join t2;
  print_endline "finished"
