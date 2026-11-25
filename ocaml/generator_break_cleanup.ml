let lock = "/tmp/bb_scratch/reader.lock"

let rows () =
  close_out (open_out lock);
  Seq.append
    (List.to_seq [ "alpha"; "beta"; "gamma" ])
    (fun () -> Sys.remove lock; Seq.Nil)

let () =
  Seq.take 1 (rows ()) |> Seq.iter print_endline (* BREAK! *)
  (* CONTROL! rows () |> Seq.iteri (fun i line -> if i = 0 then print_endline line) *)
