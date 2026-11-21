(* LEVEL: STD *)

let () =
  let worker = Domain.spawn (fun () -> failwith "bad input") in
  match Domain.join worker with
  | () -> print_endline "ok"
  | exception Failure msg -> print_endline msg
