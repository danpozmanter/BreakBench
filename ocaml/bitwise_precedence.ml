let () =
  let x = int_of_string Sys.argv.(1) in
  print_endline (if x land 1 = 0 then "even" else "odd")
