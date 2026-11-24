exception Disk_error of string

let write_report _text = raise (Disk_error "disk full")
let close_report () = raise (Disk_error "close failed")

let save () = Fun.protect ~finally:close_report (fun () -> write_report "totals") (* CONTROL! let save () = match write_report "totals" with () -> close_report () | exception e -> (try close_report () with Disk_error _ -> ()); raise e *)

let () =
  try save () with
  | Disk_error message -> print_endline message
  | error -> print_endline (Printexc.to_string error)
