let () =
  let v = int_of_string Sys.argv.(1) in
  print_int (Char.code (Char.chr v)); (* CONTROL! if v < 0 || v > 255 then print_string "out of range" else print_int (Char.code (Char.chr v)); *)
  print_newline ()
