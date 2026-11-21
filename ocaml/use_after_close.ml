let () =
  let oc = open_out "/tmp/bb_close.txt" in
  output_string oc "a";
  close_out oc;
  output_string oc "b";
  flush oc;
  print_endline "ok"
