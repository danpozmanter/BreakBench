let () =
  let oc = open_out "/dev/full" in
  output_string oc "data\n"; (* CONTROL! (try output_string oc "data\n"; close_out oc; print_endline "saved" with Sys_error _ -> print_endline "failed") *)
  close_out oc; (* BREAK! *)
  print_endline "saved" (* BREAK! *)
