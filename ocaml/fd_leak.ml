let () =
  let n = int_of_string Sys.argv.(1) in
  let oc = open_out "/tmp/bb_fd.txt" in
  output_string oc "x";
  close_out oc;
  for _ = 1 to n do
    let ic = open_in "/tmp/bb_fd.txt" in
    ignore (input_char ic)
  done;
  print_endline "done"
