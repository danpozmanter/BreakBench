let header = 5

let () =
  let message = Sys.argv.(1) in
  let payload = String.length message - header in
  if payload < 0 then print_endline "short" else (print_int payload; print_newline ())
