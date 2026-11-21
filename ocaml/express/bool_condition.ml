(* LEVEL: LANGUAGE *)

let () =
  if compare "x" "x" = 0 then print_endline "same";
  if compare "x" "x" then print_endline "different" (* REJECT! *)
