(* LEVEL: LANGUAGE *)

let () =
  let xs = [ 1; 2; 3 ] in
  xs.(0) <- 9; (* REJECT! *)
  print_int (List.length xs);
  print_newline ()
