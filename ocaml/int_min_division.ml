let () =
  let a = Int64.of_string Sys.argv.(1) in
  let b = Int64.of_string Sys.argv.(2) in
  print_endline (Int64.to_string (Int64.div a b)) (* CONTROL! Printf.printf "%Lu\n" (Int64.unsigned_div (Int64.neg a) (Int64.neg b)) *)
