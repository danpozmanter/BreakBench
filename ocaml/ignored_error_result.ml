let save path =
  let oc = open_out path in
  output_string oc "data";
  close_out oc

let () =
  save "/nonexistent/dir/out.txt";
  print_endline "saved"
