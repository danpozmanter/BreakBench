let () =
  (try Sys.remove "/tmp/bb_pwned" with Sys_error _ -> ());
  let pid = Unix.create_process "echo" [| "echo"; Sys.argv.(1) |] Unix.stdin Unix.stdout Unix.stderr in
  let _ = Unix.waitpid [] pid in
  print_endline (if Sys.file_exists "/tmp/bb_pwned" then "injected" else "safe")
