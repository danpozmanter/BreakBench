let () =
  let x = float_of_string Sys.argv.(1) and y = float_of_string Sys.argv.(2) in
  let a = x +. y in
  print_endline (if a = 0.3 then "equal" else "not equal") (* CONTROL! print_endline (if Float.abs (a -. 0.3) < 1e-9 then "equal" else "not equal") *)
