let first_answer () =
  let answers = Event.new_channel () in
  let workers = List.init 2 (fun _ -> Thread.create (fun () -> Event.sync (Event.send answers 42)) ()) in
  (Event.sync (Event.receive answers), workers)

let () =
  let answer, workers = first_answer () in
  print_int answer;
  print_newline ();
  List.iter Thread.join workers;
  print_endline "done"
