(* LEVEL: LANGUAGE *)

let () =
  let o : int option = None in
  let n = o + 1 in (* REJECT! *)
  print_endline (if Option.is_none o then "none" else "some")
