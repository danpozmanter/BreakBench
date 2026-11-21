(* LEVEL: STD *)

let () =
  let ch = Event.new_channel () in
  let worker = Thread.create (fun () -> List.iter (fun v -> Event.sync (Event.send ch v)) [ 1; 2; 3 ]) () in
  let got = List.init 3 (fun _ -> Event.sync (Event.receive ch)) in
  Thread.join worker;
  print_endline (String.concat " " (List.map string_of_int got))
