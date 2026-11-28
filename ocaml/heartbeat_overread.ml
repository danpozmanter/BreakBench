let () =
  let claimed = int_of_string Sys.argv.(1) in
  let buf = Bytes.make 64 '\000' in
  Bytes.blit_string "SECRET-KEY-0042" 0 buf 2 15;
  Bytes.blit_string "hi" 0 buf 0 2;
  let payload = Bytes.sub buf 0 2 in
  print_endline (Bytes.to_string (Bytes.sub payload 0 claimed)) (* CONTROL! print_endline (if claimed > Bytes.length payload then "invalid" else Bytes.to_string (Bytes.sub payload 0 claimed)) *)
