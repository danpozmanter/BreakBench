(* LEVEL: LANGUAGE *)

let () =
  print_endline "before";
  assert (Sys.opaque_identity false);
  print_endline "after"
