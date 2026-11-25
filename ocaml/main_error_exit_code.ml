let () =
  match In_channel.with_open_text "/nonexistent/bb.conf" In_channel.input_all with
  | text -> print_int (String.length text)
  | exception Sys_error msg ->
      prerr_endline ("config missing: " ^ msg) (* BREAK! *)
      (* CONTROL! prerr_endline ("config missing: " ^ msg); exit 1 *)
