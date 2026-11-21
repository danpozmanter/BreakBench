let () =
  let re = Str.regexp "^\\(a+\\)+$" in
  print_endline (if Str.string_match re Sys.argv.(1) 0 then "match" else "no match")
