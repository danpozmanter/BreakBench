(* LEVEL: STD *)

let () =
  let lock = Mutex.create () and count = ref 0 in
  let work () = for _ = 1 to 100_000 do Mutex.protect lock (fun () -> incr count) done in
  let a = Domain.spawn work and b = Domain.spawn work in
  Domain.join a;
  Domain.join b;
  print_int !count;
  print_newline ()
