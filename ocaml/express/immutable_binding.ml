(* LEVEL: LANGUAGE *)

let () =
  let x = 1 in
  x := 2; (* REJECT! *)
  print_int x;
  print_newline ()
