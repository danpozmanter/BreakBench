(* LEVEL: STD *)

let () =
  let buf = Buffer.create 16 in
  for i = 1 to 100_000 do
    Buffer.add_char buf (Char.chr (i land 255))
  done;
  print_int (Buffer.length buf);
  print_newline ()
