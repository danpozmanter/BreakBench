let () =
  let rounds = int_of_string Sys.argv.(1) in
  for i = 0 to rounds - 1 do
    let answers = Event.new_channel () in
    for w = 0 to 1 do
      ignore (Thread.create (fun () -> Event.sync (Event.send answers (Array.make 8192 (i + w)))) ())
    done;
    let first = Event.sync (Event.receive answers) in
    if Array.length first <> 8192 then print_endline "short"
  done;
  print_endline "done"
