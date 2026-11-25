let () =
  let grid = Array.make 3 (Array.make 3 0) in (* CONTROL! let grid = Array.make_matrix 3 3 0 in *)
  grid.(0).(0) <- 1;
  let ones = Array.fold_left (fun acc row -> acc + Array.fold_left (fun a c -> if c = 1 then a + 1 else a) 0 row) 0 grid in
  print_int ones;
  print_newline ()
