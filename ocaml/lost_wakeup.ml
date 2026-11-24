let () =
  let lock = Mutex.create () in
  let woken = Condition.create () in
  (* CONTROL! let ready = ref false in *)
  Mutex.lock lock;
  Condition.signal woken; (* CONTROL! ready := true; Condition.signal woken; *)
  Mutex.unlock lock;
  let worker =
    Thread.create
      (fun () ->
        Mutex.lock lock;
        Condition.wait woken lock; (* CONTROL! while not !ready do Condition.wait woken lock done; *)
        Mutex.unlock lock;
        print_endline "done")
      ()
  in
  Thread.join worker
