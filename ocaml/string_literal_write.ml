let () =
  let greeting = "hello" in
  greeting.[0] <- 'j'; (* BREAK! *)
  print_endline greeting
