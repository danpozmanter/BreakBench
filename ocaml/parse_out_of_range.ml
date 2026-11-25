let () =
  let n = Int64.of_string Sys.argv.(1) in (* CONTROL! match Int64.of_string_opt Sys.argv.(1) with None -> print_endline "invalid" *)
  print_endline (Int64.to_string n) (* CONTROL! | Some n -> print_endline (Int64.to_string n) *)
