let () =
  let price = int_of_string Sys.argv.(1) in
  let total = price + 2 in
  print_int price; (* CONTROL! print_int total; *)
  print_newline ()
