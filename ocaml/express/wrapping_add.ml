(* LEVEL: STD *)

let () =
  let n = Int64.of_string Sys.argv.(1) in
  print_endline (Int64.to_string (Int64.add n 1L))
