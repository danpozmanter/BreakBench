(* LEVEL: STD *)

let () =
  let a = float_of_string "nan" in
  let b = float_of_string "nan" in
  let s = Hashtbl.create 1 in
  Hashtbl.replace s a ();
  print_endline (if Hashtbl.mem s b then "found" else "missing")
