let () =
  let x = float_of_string Sys.argv.(1) in
  let v = Int64.of_float x in
  print_endline (Int64.to_string v)
