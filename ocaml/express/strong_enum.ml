(* LEVEL: LANGUAGE *)

type color = Red | Green | Blue

let name = function Red -> "red" | Green -> "green" | Blue -> "blue"

let () =
  let c = Green in
  ignore [ Red; Blue ];
  print_endline (name 7); (* REJECT! *)
  print_endline (name c)
