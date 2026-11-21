(* LEVEL: STD *)

let rec deep n = if n = 0 then 0 else 1 + deep (n - 1)

let () =
  match deep 1_000_000_000 with
  | n -> print_int n; print_newline ()
  | exception Stack_overflow -> print_endline "stack overflow"
