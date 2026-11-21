(* LEVEL: LANGUAGE *)

let check n = if n > 100 then print_endline "big" else print_endline "ok"

let check_twice () = return (); print_endline "checked" (* REJECT! *)

let () = check_twice () (* REJECT! *)

let () = check 1
