(* LEVEL: STD *)

let use_resource fail =
  Fun.protect ~finally:(fun () -> print_endline "released") (fun () -> if fail then failwith "boom")

let () =
  use_resource false;
  try use_resource true with Failure _ -> ()
