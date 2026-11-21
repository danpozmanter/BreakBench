(* LEVEL: STD *)

let () =
  print_endline (if String.is_valid_utf_8 "a\xff" then "valid" else "invalid")
