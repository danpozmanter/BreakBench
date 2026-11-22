let find_name id = if id = 1 then Some "alice" else None

let () =
  let name = find_name (int_of_string Sys.argv.(1)) in
  print_endline ("hello, " ^ name) (* CONTROL! print_endline ("hello, " ^ Option.value name ~default:"nobody") *)
