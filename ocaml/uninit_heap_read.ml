let () =
  let session = ref (Bytes.create 64) in
  Bytes.blit_string "SECRET-TOKEN" 0 !session 32 12;
  session := Bytes.empty;
  let reply = Bytes.create 64 in
  let buf = Buffer.create 24 in
  for i = 32 to 43 do
    Buffer.add_string buf (Printf.sprintf "%02x" (Char.code (Bytes.get reply i)))
  done;
  print_endline (Buffer.contents buf)
