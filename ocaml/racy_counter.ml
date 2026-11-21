let () =
  let count = ref 0 in
  let add () = for _ = 1 to 1_000_000 do incr count done in
  let a = Domain.spawn add in
  let b = Domain.spawn add in
  Domain.join a;
  Domain.join b;
  print_int !count;
  print_newline ()
