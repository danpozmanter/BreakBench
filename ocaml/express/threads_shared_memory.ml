(* LEVEL: STD *)

let () =
  let slots = Array.make 10 0 in
  let fill lo = Domain.spawn (fun () -> for i = lo to lo + 4 do slots.(i) <- i done) in
  let a = fill 0 and b = fill 5 in
  Domain.join a;
  Domain.join b;
  print_int (Array.fold_left ( + ) 0 slots);
  print_newline ()
