let add_item ?(cart = []) item = item :: cart

let () =
  let _ = add_item "x" in
  let b = add_item "y" in
  print_int (List.length b);
  print_newline ()
