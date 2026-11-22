(* OCaml has no conversion from an integer to a variant; the match below must handle every other value. *)
type color = Red | Green | Blue

let color = function 0 -> Some Red | 1 -> Some Green | 2 -> Some Blue | _ -> None

let () =
  let n = int_of_string Sys.argv.(1) in
  print_endline "before";
  match color n with
  | Some Red -> print_endline "Red"
  | Some Green -> print_endline "Green"
  | Some Blue -> print_endline "Blue"
  | None -> print_endline "invalid"
