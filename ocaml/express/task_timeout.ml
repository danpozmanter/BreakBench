(* LEVEL: STD *)

let () =
  let work = Event.new_channel () and timer = Event.new_channel () in
  ignore (Thread.create (fun () -> Unix.sleepf 5.0; Event.sync (Event.send work "done")) ());
  ignore (Thread.create (fun () -> Unix.sleepf 0.1; Event.sync (Event.send timer "timed out")) ());
  print_endline (Event.select [ Event.receive work; Event.receive timer ]);
  exit 0
