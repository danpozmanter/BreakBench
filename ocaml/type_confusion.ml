let add (a : int) (b : int) = a + b

let () =
  let raw = Sys.argv.(1) in
  print_int (add raw 3); (* BREAK! *)
  print_endline (raw ^ " " ^ string_of_int (add 1 2))
