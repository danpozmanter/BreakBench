(* LEVEL: STD *)

let () =
  let seen = Hashtbl.create 4 in
  Hashtbl.replace seen (1, 2) ();
  print_endline (string_of_bool (Hashtbl.mem seen (1, 2)))
