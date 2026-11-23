let () =
  let lists = Event.new_channel () in
  let go_on = Event.new_channel () in
  let worker =
    Thread.create
      (fun () ->
        let received = Event.sync (Event.receive lists) in
        Event.sync (Event.receive go_on);
        print_int (List.hd received);
        print_newline ())
      ()
  in
  let list = [ 1; 2; 3 ] in
  Event.sync (Event.send lists list);
  let changed = 99 :: List.tl list in
  Event.sync (Event.send go_on ());
  Thread.join worker;
  ignore changed
