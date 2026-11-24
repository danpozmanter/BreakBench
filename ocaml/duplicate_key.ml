let () =
  let m = Hashtbl.of_seq (List.to_seq [ ("a", 1); ("a", 2) ]) in (* CONTROL! let m = Hashtbl.of_seq (List.to_seq [ ("a", 1); ("b", 2) ]) in *)
  print_int (Hashtbl.length m);
  print_newline ()
