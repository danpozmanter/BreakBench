(* LEVEL: STD *)

module M = Map.Make (String)

let () =
  let m = List.fold_left (fun m k -> M.add k 0 m) M.empty [ "c"; "a"; "b" ] in
  print_endline (String.concat " " (List.map fst (M.bindings m)))
