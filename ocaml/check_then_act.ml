let state_lock = Mutex.create ()
let gate_lock = Mutex.create ()
let gate_cond = Condition.create ()
let arrivals = ref 0
let claimed = ref false
let winners = ref 0

let rendezvous () =
  Mutex.lock gate_lock;
  incr arrivals;
  if !arrivals = 2 then Condition.broadcast gate_cond
  else while !arrivals < 2 do Condition.wait gate_cond gate_lock done;
  Mutex.unlock gate_lock

let claim () =
  let available = ref false in
  Mutex.lock state_lock;
  available := not !claimed; (* BREAK! *)
  Mutex.unlock state_lock;
  (* CONTROL! available := not !claimed; if !available then claimed := true *)
  rendezvous ();
  if !available then (Mutex.lock state_lock; claimed := true; incr winners; Mutex.unlock state_lock)

let () =
  let a = Thread.create claim () and b = Thread.create claim () in
  Thread.join a; Thread.join b;
  Printf.printf "%d\n" !winners
