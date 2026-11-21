type user = { name : string }

let find_user id = if id = 1 then Some { name = "alice" } else None

let () =
  let u = find_user (int_of_string Sys.argv.(1)) in
  print_int (String.length u.name); (* BREAK! *)
  print_endline (match u with Some x -> x.name | None -> "none")
