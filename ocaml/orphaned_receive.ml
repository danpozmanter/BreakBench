let () =
  let answer = Event.new_channel () in
  ignore (Thread.create (fun () -> Event.sync (Event.send answer (int_of_string "x"))) ());
  print_int (Event.sync (Event.receive answer));
  print_newline ()
