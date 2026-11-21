type config = { mutable color : string }

let () =
  let cfg = { color = "blue" } in
  cfg.colour <- "red"; (* BREAK! *)
  print_endline cfg.color
