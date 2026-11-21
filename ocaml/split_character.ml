let () =
  let name = "a👍b" in
  let n = int_of_string Sys.argv.(1) in
  print_endline (String.sub name 0 n)
