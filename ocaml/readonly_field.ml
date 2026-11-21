type config = { port : int }

let () =
  let c = { port = 8080 } in
  c.port <- 1; (* BREAK! *)
  print_int c.port;
  print_newline ()
