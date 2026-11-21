(* LEVEL: STD *)

let () =
  let path = Filename.temp_file "bb" ".txt" in
  Out_channel.with_open_text path (fun oc -> output_string oc "ok");
  print_endline (In_channel.with_open_text path In_channel.input_all);
  Sys.remove path
