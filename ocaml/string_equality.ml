let () =
  let s = "ab" ^ Sys.argv.(1) in
  print_endline (if s = "abc" then "equal" else "different")
