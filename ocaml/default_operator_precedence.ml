let cached_count name = if name = "ada" then Some 4 else None

let () =
  let cached = cached_count Sys.argv.(1) in
  let count = Option.value cached ~default:0 + 1 in
  print_int count;
  print_newline ()
