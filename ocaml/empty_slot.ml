type user = { name : string }

let () =
  let users = Array.make 3 None in
  users.(1) <- Some { name = "bob" };
  users.(2) <- Some { name = "carol" };
  print_int (String.length users.(0).name); (* BREAK! *)
  (* CONTROL! print_int (match users.(0) with Some u -> String.length u.name | None -> 0); *)
  print_newline ()
