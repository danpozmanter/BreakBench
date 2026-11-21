let () =
  let ids = [ 10; 20; 30 ] in
  let id = Sys.argv.(1) in
  print_endline (if List.mem id ids then "found" else "missing") (* CONTROL! print_endline (if List.mem (int_of_string id) ids then "found" else "missing") *)
