let () =
  let names = [
    "alice";
    "bob" (* BREAK! *)
    (* CONTROL! "bob"; *)
    "carol";
  ] in
  print_int (List.length names);
  print_newline ()
