(* LEVEL: STD *)

let () =
  Sys.set_signal Sys.sigterm
    (Sys.Signal_handle
       (fun _ ->
         print_endline "cleaned up";
         exit 0));
  Unix.kill (Unix.getpid ()) Sys.sigterm;
  Unix.sleepf 5.0;
  print_endline "no signal"
