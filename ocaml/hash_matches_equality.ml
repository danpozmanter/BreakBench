type point = { x : int; y : int; label : string }

let equal a b = a.x = b.x && a.y = b.y

let () =
  let s = Hashtbl.create 2 in
  Hashtbl.replace s { x = 1; y = 2; label = "a" } ();
  Hashtbl.replace s { x = 1; y = 2; label = "b" } ();
  ignore (equal { x = 0; y = 0; label = "" } { x = 0; y = 0; label = "" });
  print_int (Hashtbl.length s);
  print_newline ()
