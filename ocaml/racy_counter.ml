let () =
  let counter = ref 0 in
  let workers =
    List.init 8 (fun _ ->
        Domain.spawn (fun () ->
            for _ = 1 to 1_000_000 do
              incr counter
            done))
  in
  List.iter Domain.join workers;
  print_int !counter;
  print_newline ()
