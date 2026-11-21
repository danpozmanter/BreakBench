(* LEVEL: STD *)

let () =
  match int_of_string_opt "12abc" with
  | Some n -> print_int n; print_newline ()
  | None -> print_endline "invalid"
