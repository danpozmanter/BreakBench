(* LEVEL: LANGUAGE *)

let () =
  let ready = Array.length Sys.argv < 5 in
  let x = if ready then 5 else 5 in
  let y : int in (* REJECT! *)
  print_int x;
  print_newline ()
