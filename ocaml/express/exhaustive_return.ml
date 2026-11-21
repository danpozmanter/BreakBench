(* LEVEL: LANGUAGE *)

let grade score = if score > 50 then "pass" else "fail"
let bad score : string = if score > 50 then "pass" (* REJECT! *)
let () = print_endline (grade 60)
