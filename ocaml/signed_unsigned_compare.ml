let () =
  let i = int_of_string Sys.argv.(1) in
  let xs = [ 1; 2; 3 ] in
  print_endline (if i < List.length xs then "less" else "not less")
