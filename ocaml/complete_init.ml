type config = { timeout : int; retries : int }

let () =
  let c = { timeout = 5; retries = 3 } in
  let _partial = { timeout = 5 } in (* BREAK! *)
  Printf.printf "%d %d\n" c.timeout c.retries
