let () =
  let n = int_of_string Sys.argv.(1) in
  let heads = ref [] and prefixes = ref [] in
  for i = 0 to n - 1 do
    let buf = Bytes.make 32768 (Char.chr (i land 255)) in
    heads := Bytes.sub buf 0 16 :: !heads;
    let big = String.make 32768 (Char.chr (97 + (i mod 26))) in
    prefixes := String.sub big 0 16 :: !prefixes
  done;
  ignore (Sys.opaque_identity !prefixes);
  print_int (List.length !heads);
  print_newline ()
