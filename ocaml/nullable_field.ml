type user = { name : string option }

let () =
  let decoded = { name = None } in
  print_int (String.length decoded.name); (* BREAK! *)
  print_int (String.length (Option.value decoded.name ~default:"")) (* CONTROL! print_int (String.length (Option.value decoded.name ~default:"")) *)
