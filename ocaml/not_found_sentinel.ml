let () =
  let line = Sys.argv.(1) in
  let pos = String.index line ':' in
  print_endline (String.sub line (pos + 1) (String.length line - pos - 1))
