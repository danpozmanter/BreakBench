type session = { user : string }

let () =
  let attacker = Marshal.to_string 42 [] in
  let session : session = Marshal.from_string attacker 0 in (* CONTROL! ignore attacker; let session : session option = None in *)
  print_endline session.user (* CONTROL! match session with Some s -> print_endline s.user | None -> print_endline "rejected" *)
