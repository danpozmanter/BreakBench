let () =
  let completed = 3 and total = 5 in
  Printf.printf "%d of %d\n" completed; (* BREAK! *)
  (* CONTROL! Printf.printf "%d of %d\n" completed total; *)
  ignore total
