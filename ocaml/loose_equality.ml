let () =
  let code = Sys.argv.(1) in
  print_endline (if code = 0 then "same" else "different") (* CONTROL! print_endline (if code = "0" then "same" else "different") *)
