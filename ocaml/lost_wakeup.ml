let () =
  let lock = Mutex.create () in
  let woken = Condition.create () in
  Mutex.lock lock;
  Condition.signal woken;
  Mutex.unlock lock;
  let worker =
    Thread.create
      (fun () ->
        Mutex.lock lock;
        Condition.wait woken lock;
        Mutex.unlock lock;
        print_endline "done")
      ()
  in
  Thread.join worker
