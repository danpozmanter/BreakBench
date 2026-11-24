let () =
  let name = "a👍b" in
  let n = int_of_string Sys.argv.(1) in
  print_endline (String.sub name 0 n) (* CONTROL! let rec cut i k = if k = 0 || i >= String.length name then i else cut (i + Uchar.utf_decode_length (String.get_utf_8_uchar name i)) (k - 1) in print_endline (String.sub name 0 (cut 0 n)) *)
