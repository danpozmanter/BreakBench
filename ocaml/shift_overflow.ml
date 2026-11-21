let () =
  let s = int_of_string Sys.argv.(1) in
  print_endline (Int64.to_string (Int64.shift_left 1L s))
