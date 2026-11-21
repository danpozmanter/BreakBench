(* LEVEL: LANGUAGE *)

let () =
  let i = ref 0 in
  incr i;
  i := !i++; (* REJECT! *)
  print_int !i;
  print_newline ()
