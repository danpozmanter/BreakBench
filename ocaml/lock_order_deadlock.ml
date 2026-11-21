let a = Mutex.create ()
let b = Mutex.create ()

let transfer first second =
  Mutex.lock first;
  Unix.sleepf 0.1;
  Mutex.lock second;
  Mutex.unlock second;
  Mutex.unlock first

let () =
  let t1 = Thread.create (fun () -> transfer a b) () in
  let t2 = Thread.create (fun () -> transfer b a) () in
  Thread.join t1;
  Thread.join t2;
  print_endline "finished"
