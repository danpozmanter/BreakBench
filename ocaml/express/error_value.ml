(* LEVEL: LANGUAGE *)

let parse_port s =
  match int_of_string_opt s with
  | Some p when p > 0 && p < 65536 -> Ok p
  | Some _ | None -> Error ("bad port: " ^ s)

let () =
  match parse_port "x" with
  | Ok p -> Printf.printf "port %d\n" p
  | Error _ -> print_endline "error"
