let is_odd n = n mod 2 = 1

let () = print_endline (if is_odd (int_of_string Sys.argv.(1)) then "odd" else "even")
