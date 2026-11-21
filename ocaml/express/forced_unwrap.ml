(* LEVEL: STD *)

let find id = if id = 1 then Some 36 else None

let () =
  print_endline "before";
  print_int (Option.get (find 2) + 1);
  print_newline ()
