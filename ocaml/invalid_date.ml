let () =
  let y = int_of_string Sys.argv.(1) and m = int_of_string Sys.argv.(2) and d = int_of_string Sys.argv.(3) in
  let tm = { Unix.tm_year = y - 1900; tm_mon = m - 1; tm_mday = d; tm_hour = 12; tm_min = 0; tm_sec = 0; tm_wday = 0; tm_yday = 0; tm_isdst = false } in
  let _, date = Unix.mktime tm in
  Printf.printf "%04d-%02d-%02d\n" (date.tm_year + 1900) (date.tm_mon + 1) date.tm_mday (* CONTROL! if date.tm_mday <> d then print_endline "invalid" else Printf.printf "%04d-%02d-%02d\n" (date.tm_year + 1900) (date.tm_mon + 1) date.tm_mday *)
