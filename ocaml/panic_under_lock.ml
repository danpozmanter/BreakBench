type ledger = { mutable debits : int; mutable credits : int }

let lock = Mutex.create ()
let ledger = { debits = 0; credits = 0 }

let post () =
  Mutex.protect lock (fun () ->
      ledger.debits <- ledger.debits + 50;
      if ledger.debits > 0 then failwith "crash mid-update"; (* CONTROL! if ledger.debits > 0 then (ledger.debits <- ledger.debits - 50; failwith "crash mid-update"); *)
      ledger.credits <- ledger.credits + 50)

let () =
  let worker = Domain.spawn post in
  (try Domain.join worker with Failure msg -> prerr_endline ("worker failed: " ^ msg));
  Mutex.protect lock (fun () ->
      print_endline (if ledger.debits = ledger.credits then "balanced" else "unbalanced"))
