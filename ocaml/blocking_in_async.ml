let () =
  let start = Unix.gettimeofday () in
  let a = Thread.create (fun () -> Unix.sleepf 0.5) () in
  let b = Thread.create (fun () -> Unix.sleepf 0.5) () in
  Thread.join a;
  Thread.join b;
  print_endline (if Unix.gettimeofday () -. start < 0.8 then "concurrent" else "serial")
