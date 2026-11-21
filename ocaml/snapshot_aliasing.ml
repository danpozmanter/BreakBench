let apply_update weights =
  weights.(1) <- 5;
  weights.(3) <- 0

let () =
  let weights = [| 3; 3; 3; 3 |] in
  let before = weights in
  apply_update weights;
  let changes = ref 0 in
  Array.iteri (fun i w -> if before.(i) <> w then incr changes) weights;
  print_int !changes;
  print_newline ()
