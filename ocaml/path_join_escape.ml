let () =
  let joined = Filename.concat "/srv/app/uploads" Sys.argv.(1) in
  print_endline (if String.starts_with ~prefix:"/srv/app/uploads/" joined then "inside" else "escaped")
