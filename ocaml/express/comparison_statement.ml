(* LEVEL: LANGUAGE *)

let () =
  let count = ref 0 in
  count := 5;
  !count = 5; (* REJECT! *)
  print_int !count;
  print_newline ()
