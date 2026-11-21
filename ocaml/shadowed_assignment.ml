let () =
  let status = ref "pending" in
  if Sys.argv.(1) = "ok" then begin
    let status = "done" in (* CONTROL! status := "done"; *)
    Printf.eprintf "status: %s\n" status (* CONTROL! Printf.eprintf "status: %s\n" !status *)
  end;
  print_endline !status
