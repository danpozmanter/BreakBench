let find id = if id = 1 then Some 36 else None

let () =
  print_endline "before";
  print_int (Option.get (find 2) + 1); (* CONTROL! (match find 2 with Some a -> print_int (a + 1) | None -> print_string "missing"); *)
  print_newline ()
