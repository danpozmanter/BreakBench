let () =
  let xs = [ 1; 2; 2; 3 ] in
  let xs = List.filter (fun x -> x <> 2) xs in
  print_endline (String.concat "," (List.map string_of_int xs))
