let () =
  let count = ref 0 in
  count := 5;
  !count = 5; (* BREAK! *)
  print_int !count;
  print_newline ()
