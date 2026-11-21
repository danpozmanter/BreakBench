let () =
  let i = ref 0 in
  incr i;
  i := !i++; (* BREAK! *)
  print_int !i;
  print_newline ()
