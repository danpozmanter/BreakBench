(* LEVEL: STD *)

let () =
  let task = Domain.spawn (fun () -> Unix.sleepf 0.05; 7) in
  print_endline "started";
  print_int (Domain.join task);
  print_newline ()
