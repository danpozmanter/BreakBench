let () =
  (try Sys.remove "/tmp/bb_pwned" with Sys_error _ -> ());
  let _ = Sys.command ("echo " ^ Sys.argv.(1)) in (* CONTROL! let _ = Sys.command ("echo " ^ Filename.quote Sys.argv.(1)) in *)
  print_endline (if Sys.file_exists "/tmp/bb_pwned" then "injected" else "safe")
