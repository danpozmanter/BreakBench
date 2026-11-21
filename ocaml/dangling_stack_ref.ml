let make () =
  let local = ref 4242 in
  local

let clobber () = (Array.make 64 7).(63)

let () =
  let r = make () in
  ignore (clobber ());
  print_int !r;
  print_newline ()
