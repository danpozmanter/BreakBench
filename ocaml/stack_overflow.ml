let rec walk n = if n = 0 then 0 else (walk (n - 1) * 31 + n) mod 1000000007 (* BREAK! *)

let () =
  print_int (walk (int_of_string Sys.argv.(1))); (* CONTROL! let n = int_of_string Sys.argv.(1) in let acc = ref 0 in for i = 1 to n do acc := (!acc * 31 + i) mod 1000000007 done; print_int !acc; *)
  print_newline ()
