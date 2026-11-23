type session = { user : string }

let () =
  let attacker = Marshal.to_string 42 [] in
  let session : session = Marshal.from_string attacker 0 in
  print_endline session.user
