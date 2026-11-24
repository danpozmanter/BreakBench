let () =
  let n = int_of_string Sys.argv.(1) in
  (* CONTROL! if n > 1 lsl 30 then (print_endline "too large"; exit 0); *)
  let buf = Bytes.make n '\000' in
  Bytes.set buf (n - 1) '\001';
  print_int (Bytes.length buf);
  print_newline ()
