let () =
  let n = int_of_string Sys.argv.(1) in
  let buf = Bytes.make n '\000' in
  Bytes.set buf (n - 1) '\001';
  print_int (Bytes.length buf);
  print_newline ()
