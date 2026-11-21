let count (xs : int list) =
  xs.(0) <- 9; (* BREAK! *)
  List.length xs

let () = Printf.printf "%d\n" (count [ 1; 2; 3 ])
