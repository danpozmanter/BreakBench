(* LEVEL: STD *)

let () =
  let xs = List.sort Float.compare [ 3.0; Float.nan; 1.0; 2.0 ] in
  let show x = if Float.is_nan x then "NaN" else Printf.sprintf "%g" x in
  print_endline (String.concat " " (List.map show xs))
