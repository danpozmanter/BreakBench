let () =
  let readings = [| 10; 20; 30 |] in
  let i = int_of_string Sys.argv.(1) in
  print_int (readings.(i) - readings.(i - 1));
  print_newline ()
