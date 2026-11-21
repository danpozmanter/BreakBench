(* LEVEL: LANGUAGE *)

type shape = Circle | Square

let describe = function Circle -> "circle" | _ -> "other"

let bad = function _ -> "other" | Circle -> "circle" (* REJECT! *)
let _ = bad (* REJECT! *)

let () =
  ignore (describe Circle);
  print_endline (describe Square)
