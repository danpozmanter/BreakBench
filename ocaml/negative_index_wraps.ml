let () =
  let readings = [| 10; 20; 30 |] in
  let i = int_of_string Sys.argv.(1) in
  print_int (readings.(i) - readings.(i - 1)); (* CONTROL! (if i > 0 then print_int (readings.(i) - readings.(i - 1)) else print_string "no previous"); *)
  print_newline ()
