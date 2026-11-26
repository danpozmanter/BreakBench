let limit = base () * 2 (* BREAK! *)
let base_value = int_of_string "10"
let base () = base_value
(* CONTROL! let limit = base () * 2 *)

let () =
  print_int limit;
  print_newline ()
