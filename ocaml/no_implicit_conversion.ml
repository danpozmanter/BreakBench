let () =
  let big = 42L in
  let small = Int64.to_int32 big in
  let (_wrong : int32) = big in (* BREAK! *)
  print_endline (Int32.to_string small)
