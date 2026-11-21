(* LEVEL: STD *)

let () =
  let count = Atomic.make 0 in
  let work () = for _ = 1 to 100_000 do Atomic.incr count done in
  let a = Domain.spawn work and b = Domain.spawn work in
  Domain.join a;
  Domain.join b;
  print_int (Atomic.get count);
  print_newline ()
