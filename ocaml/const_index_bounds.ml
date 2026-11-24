let () =
  let table = [| 10; 20; 30 |] in
  print_int table.(5); (* CONTROL! print_int table.(1); *)
  print_newline ()
