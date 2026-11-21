let saved = Atomic.make 0

let save () =
  Unix.sleepf 0.05;
  Atomic.incr saved

let () =
  Domain.spawn save |> ignore; (* BREAK! *)
  (* CONTROL! Domain.join (Domain.spawn save); *)
  print_int (Atomic.get saved);
  print_newline ()
