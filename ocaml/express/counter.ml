(* LEVEL: STD *)

module M = Map.Make (String)

let () =
  let counts =
    List.fold_left
      (fun m w -> M.update w (fun c -> Some (1 + Option.value c ~default:0)) m)
      M.empty [ "a"; "b"; "a" ]
  in
  print_endline (String.concat " " (List.map (fun (k, v) -> Printf.sprintf "%s=%d" k v) (M.bindings counts)))
