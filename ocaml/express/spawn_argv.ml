(* LEVEL: STD *)

let () =
  let ic = Unix.open_process_args_in "echo" [| "echo"; "hi; touch /tmp/bb_x" |] in
  print_endline (input_line ic);
  ignore (Unix.close_process_in ic)
