let () =
  let table = Hashtbl.create 16 in
  let writers =
    List.init 8 (fun t ->
        Domain.spawn (fun () ->
            for k = 0 to 99_999 do
              Hashtbl.replace table ((t * 100_000) + k) k
            done))
  in
  List.iter Domain.join writers;
  print_int (Hashtbl.length table);
  print_newline ()
