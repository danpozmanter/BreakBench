let () =
  let ready = Sys.argv.(1) = "yes" in
  let approved = Sys.argv.(2) = "yes" in
  let ok = ready && approved in
  print_endline (if ok then "go" else "wait")
