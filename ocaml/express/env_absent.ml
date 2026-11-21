(* LEVEL: STD *)

let () =
  match Sys.getenv_opt "BB_UNSET" with
  | None -> print_endline "absent"
  | Some v -> print_endline ("present: " ^ v)
