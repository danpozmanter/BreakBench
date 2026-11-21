let () =
  let scores = List.sort compare [ 10; 9; 1 ] in
  print_endline (String.concat " " (List.map string_of_int scores))
