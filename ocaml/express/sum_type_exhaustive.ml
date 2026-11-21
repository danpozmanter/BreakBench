(* LEVEL: LANGUAGE *)

type shape = Circle of float | Square of float

let name = function Circle _ -> "circle" | Square _ -> "square"

let bad = function Circle _ -> "circle" (* REJECT! *)
let _ = bad (* REJECT! *)

let () =
  ignore (name (Square 2.0));
  print_endline (name (Circle 1.0))
