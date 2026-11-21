(* LEVEL: LANGUAGE *)

let () =
  let id = 42 in
  if id = 42 then print_endline "match";
  if id = "42" then print_endline "text" (* REJECT! *)
