(* LEVEL: LANGUAGE *)

let save () : (unit, string) result = Error "disk full"

let () =
  save (); (* REJECT! *)
  match save () with
  | Error _ -> print_endline "handled"
  | Ok () -> ()
