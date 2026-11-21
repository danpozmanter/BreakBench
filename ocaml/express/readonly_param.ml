(* LEVEL: LANGUAGE *)

let count (xs : int list) =
  xs.(0) <- 9; (* REJECT! *)
  List.length xs

let () = Printf.printf "%d\n" (count [ 1; 2; 3 ])
