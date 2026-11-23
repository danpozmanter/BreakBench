let () =
  let count = int_of_string Sys.argv.(1) in
  let size = count * 8 in
  let records = Bytes.make size '\000' in
  Bytes.set records 8 (Char.chr 99);
  print_endline "stored"
