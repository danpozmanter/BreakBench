let () =
  let d = int_of_string Sys.argv.(1) in
  print_int (100 / d); (* CONTROL! if d = 0 then print_string "cannot divide" else print_int (100 / d); *)
  print_newline ()
