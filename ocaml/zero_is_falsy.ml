let () =
  let qty = int_of_string_opt Sys.argv.(1) in
  let present = if qty then true else false in (* BREAK! *)
  (* CONTROL! let present = Option.is_some qty in *)
  print_endline (if present then Printf.sprintf "have %d" (Option.get qty) else "missing")
