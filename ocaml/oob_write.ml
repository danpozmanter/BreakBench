type frame = { buf : int array; guard : int }

let () =
  let f = { buf = Array.make 4 0; guard = 7 } in
  f.buf.(int_of_string Sys.argv.(1)) <- 99;
  print_int f.guard;
  print_newline ()
