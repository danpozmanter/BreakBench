let () =
  let counts = Array.make 256 0 in
  String.iter (fun c -> counts.(Char.code c) <- counts.(Char.code c) + 1) Sys.argv.(1);
  print_int (Array.fold_left ( + ) 0 (Array.sub counts 128 128));
  print_newline ()
