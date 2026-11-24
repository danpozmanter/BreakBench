let span = 1_000_000_000 * 60 * 60 * 24 * 365 * 300 (* CONTROL! let span = Int64.(mul (mul 1_000_000_000L 31_536_000L) 300L) *)

let () =
  print_int span; (* CONTROL! Printf.printf "%Lu\n" span; *)
  print_newline ()
