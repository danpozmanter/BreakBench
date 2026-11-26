let () =
  let text = Sys.argv.(1) in
  let re = Str.regexp "^[a-z]+$" in
  print_endline (if Str.string_match re text 0 then "accepted" else "rejected") (* CONTROL! print_endline (if Str.string_match re text 0 && Str.match_end () = String.length text then "accepted" else "rejected") *)
