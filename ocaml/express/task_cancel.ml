(* LEVEL: STD *)

let () =
  let cancelled = Atomic.make false in
  let task = Domain.spawn (fun () -> while not (Atomic.get cancelled) do Unix.sleepf 0.001 done) in
  Unix.sleepf 0.02;
  Atomic.set cancelled true;
  Domain.join task;
  print_endline "stopped"
