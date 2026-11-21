(* LEVEL: STD *)

let work () = Fun.protect ~finally:(fun () -> print_endline "cleanup") (fun () -> failwith "panic")

let () = try work () with Failure _ -> print_endline "recovered"
