type shape = Circle | Square

let describe = function Circle -> "circle" | _ -> "other"

let bad = function _ -> "other" | Circle -> "circle" (* BREAK! *)
let _ = bad (* BREAK! *)

let () =
  ignore (describe Circle);
  print_endline (describe Square)
