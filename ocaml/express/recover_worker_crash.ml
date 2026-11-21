(* LEVEL: STD *)

let () =
  let worker = Domain.spawn (fun () -> failwith "crash") in
  match Domain.join worker with
  | () -> print_endline "worker finished"
  | exception Failure _ -> print_endline "worker crashed"
