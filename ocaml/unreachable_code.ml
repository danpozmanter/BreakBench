(* OCaml has no return statement: a function runs to its last expression, so nothing can cut it short. *)
let check () =
  print_endline "ok";
  print_endline "checked"

let () = check ()
