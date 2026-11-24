let () =
  let count = int_of_string Sys.argv.(1) in
  (* CONTROL! if count > 1 lsl 27 then (print_endline "too large"; exit 0); *)
  let size = count * 8 in
  let records = Bytes.make size '\000' in
  Bytes.set records 8 (Char.chr 99);
  print_endline "stored"
