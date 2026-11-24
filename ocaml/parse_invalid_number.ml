let () =
  let n = int_of_string Sys.argv.(1) in (* CONTROL! match int_of_string_opt Sys.argv.(1) with None -> print_endline "invalid" *)
  print_int (n + 1); (* CONTROL! | Some n -> print_int (n + 1); *)
  print_newline ()
