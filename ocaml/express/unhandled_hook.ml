(* LEVEL: STD *)

let () =
  Printexc.set_uncaught_exception_handler (fun _ _ -> print_endline "hook ran");
  failwith "boom"
