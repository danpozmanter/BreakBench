let () =
  let count = int_of_string Sys.argv.(1) in
  let total = ref 0 in
  In_channel.with_open_bin "/dev/zero" (fun source ->
      for _ = 1 to count do
        let message = Bytes.create 4096 in
        In_channel.really_input source message 0 4096 |> Option.get;
        total := !total + Bytes.length message
      done);
  print_int !total;
  print_newline ()
