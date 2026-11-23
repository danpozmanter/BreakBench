exception Disk_error of string

let write_report _text = raise (Disk_error "disk full")
let close_report () = raise (Disk_error "close failed")

let save () = Fun.protect ~finally:close_report (fun () -> write_report "totals")

let () =
  try save () with
  | Disk_error message -> print_endline message
  | error -> print_endline (Printexc.to_string error)
