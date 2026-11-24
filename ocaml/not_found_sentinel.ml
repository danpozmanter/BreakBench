let () =
  let line = Sys.argv.(1) in
  let pos = String.index line ':' in (* CONTROL! match String.index_opt line ':' with None -> print_endline "no colon" | Some pos -> *)
  print_endline (String.sub line (pos + 1) (String.length line - pos - 1))
