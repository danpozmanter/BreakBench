let () =
  let table = [| 10; 20; 30 |] in (* CONTROL! let table = [| 10; 20; 30; 40 |] in *)
  print_int table.(3);
  print_newline ()
