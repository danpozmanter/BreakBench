let scratch = "/tmp/bb_scratch/export.csv"

let export rows =
  let out = open_out scratch in
  output_string out "qty\n";
  List.iter
    (fun row ->
      let qty = int_of_string row in (* BREAK! *)
      (* CONTROL! let qty = match int_of_string_opt row with Some n -> n | None -> close_out out; Sys.remove scratch; failwith ("invalid row " ^ row) in *)
      Printf.fprintf out "%d\n" qty)
    rows;
  close_out out;
  Sys.remove scratch

let () =
  try export [ "3"; "x"; "5" ] with Failure _ -> print_endline "export failed"
