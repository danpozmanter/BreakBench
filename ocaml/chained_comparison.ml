let () =
  let x = int_of_string Sys.argv.(1) in
  let inside = 1 < x < 3 in (* BREAK! *)
  (* CONTROL! let inside = 1 < x && x < 3 in *)
  print_endline (if inside then "inside" else "outside")
