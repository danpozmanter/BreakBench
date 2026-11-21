let check n = if n > 100 then print_endline "big" else print_endline "ok"

let check_twice () = return (); print_endline "checked" (* BREAK! *)

let () = check_twice () (* BREAK! *)

let () = check 1
