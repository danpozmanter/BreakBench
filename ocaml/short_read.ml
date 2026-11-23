let () =
  let child = Unix.open_process_args_in "sh" [| "sh"; "-c"; "printf HELLO-WO; sleep 0.2; printf RLD-1234" |] in
  let message = Bytes.make 16 '\000' in
  let _ = input child message 0 16 in
  ignore (Unix.close_process_in child);
  print_endline (Bytes.to_string message)
