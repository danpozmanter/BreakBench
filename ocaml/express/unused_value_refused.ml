(* LEVEL: LANGUAGE *)

let () =
  let price = 40 in
  let total = price + 2 in
  let doubled = price * 2 in (* REJECT! *)
  print_int total;
  print_newline ()
