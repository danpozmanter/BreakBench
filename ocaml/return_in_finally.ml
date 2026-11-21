exception Disk_full

let write_report () = raise Disk_full
let close_log () = ()

let save_report () = Fun.protect ~finally:close_log write_report

let () =
  match save_report () with
  | () -> print_endline "saved"
  | exception Disk_full -> print_endline "failed"
