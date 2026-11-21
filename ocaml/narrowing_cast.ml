let () =
  let v = int_of_string Sys.argv.(1) in
  print_int (Char.code (Char.chr v));
  print_newline ()
