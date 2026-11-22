let () =
  let oc = open_out "/dev/full" in
  output_string oc "data\n";
  close_out oc;
  print_endline "saved"
