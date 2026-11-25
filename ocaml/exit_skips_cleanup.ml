let lock = "/tmp/bb_scratch/run.lock"

let check_args () =
  if Array.mem "--version" Sys.argv then begin
    print_endline "1.0";
    exit 0 (* BREAK! *)
    (* CONTROL! true *)
  end
  else false

let () =
  close_out (open_out lock);
  Fun.protect
    ~finally:(fun () -> Sys.remove lock)
    (fun () -> if not (check_args ()) then print_endline "working")
