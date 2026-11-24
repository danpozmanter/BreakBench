let () =
  let answer = Event.new_channel () in
  ignore (Thread.create (fun () -> Event.sync (Event.send answer (int_of_string "x"))) ()); (* CONTROL! ignore (Thread.create (fun () -> Event.sync (Event.send answer (int_of_string_opt "x"))) ()); *)
  print_int (Event.sync (Event.receive answer)); (* CONTROL! print_string (match Event.sync (Event.receive answer) with Some n -> string_of_int n | None -> "failed"); *)
  print_newline ()
