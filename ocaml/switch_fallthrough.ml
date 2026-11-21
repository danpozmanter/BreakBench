let () =
  let n = int_of_string Sys.argv.(1) in
  let name = match n with 1 -> "one" | 2 -> "two" | _ -> "other" in
  print_endline name
