let () =
  let n = int_of_string Sys.argv.(1) in
  let x : int ref in (* BREAK! *)
  (* CONTROL! let x = ref 0 in *)
  if n > 5 then x := 10;
  print_int !x;
  print_newline ()
