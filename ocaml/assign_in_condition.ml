let () =
  let x = int_of_string Sys.argv.(1) in
  print_endline (if x = 1 then "one" else "not one")
