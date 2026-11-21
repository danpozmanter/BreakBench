(* LEVEL: STD *)

let () =
  match Bytes.create (int_of_string Sys.argv.(1)) with
  | b -> print_int (Bytes.length b); print_newline ()
  | exception Out_of_memory -> print_endline "allocation failed"
