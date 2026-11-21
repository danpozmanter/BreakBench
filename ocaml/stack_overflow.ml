let rec walk n = if n = 0 then 0 else (walk (n - 1) * 31 + n) mod 1000000007

let () =
  print_int (walk (int_of_string Sys.argv.(1)));
  print_newline ()
