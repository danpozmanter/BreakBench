type frame = { buf : int array; guard : int }

let () =
  let f = { buf = Array.make 4 0; guard = 7 } in
  f.buf.(int_of_string Sys.argv.(1)) <- 99; (* CONTROL! (let i = int_of_string Sys.argv.(1) in if i >= 0 && i < 4 then f.buf.(i) <- 99); *)
  print_int f.guard;
  print_newline ()
