(* LEVEL: STD *)

let () =
  match Char.chr (int_of_string Sys.argv.(1)) with
  | c -> print_int (Char.code c); print_newline ()
  | exception Invalid_argument _ -> print_endline "does not fit"
