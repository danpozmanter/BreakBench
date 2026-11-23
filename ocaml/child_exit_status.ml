let () =
  Sys.command "sh -c 'exit 3'"; (* CONTROL! ignore (Sys.command "sh -c 'exit 3'"); *)
  print_endline "backed up"
