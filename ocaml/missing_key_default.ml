let () =
  let stock = Hashtbl.create 4 in
  Hashtbl.replace stock "apple" 3;
  Hashtbl.replace stock "plum" 4;
  let name = Sys.argv.(1) in
  print_int (Hashtbl.find stock name + 5); (* CONTROL! (match Hashtbl.find_opt stock name with Some n -> print_int (n + 5) | None -> print_string "unknown"); *)
  print_newline ()
