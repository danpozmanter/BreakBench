let () =
  (try Sys.mkdir "/tmp/bb_files" 0o755 with Sys_error _ -> ());
  Out_channel.with_open_text "/tmp/bb_files/report.txt" (fun seed -> output_string seed "secret\n");
  let name = "report.txt\000.png" in
  if not (String.ends_with ~suffix:".png" name) then print_endline "rejected"
  else
    match In_channel.with_open_text ("/tmp/bb_files/" ^ name) In_channel.input_all with
    | text -> print_string text
    | exception (Sys_error _ | Invalid_argument _) -> print_endline "rejected"
