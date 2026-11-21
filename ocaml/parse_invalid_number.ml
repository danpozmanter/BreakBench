let () =
  let n = int_of_string Sys.argv.(1) in
  print_int (n + 1);
  print_newline ()
