let area w h = w * h

let () =
  print_int (area 3); (* BREAK! *)
  print_int (area 3 4);
  print_newline ()
