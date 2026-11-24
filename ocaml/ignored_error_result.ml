let save path =
  let oc = open_out path in
  output_string oc "data";
  close_out oc

let () =
  save "/dev/null/out.txt"; (* CONTROL! (try save "/dev/null/out.txt"; print_endline "saved" with Sys_error _ -> print_endline "failed") *)
  print_endline "saved" (* BREAK! *)
