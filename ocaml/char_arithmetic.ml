let () =
  let c = 'a' in
  print_int (Char.code c + 1);
  print_newline ();
  print_int (c + 1) (* BREAK! *)
