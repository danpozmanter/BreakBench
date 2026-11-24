let () =
  let args = Array.to_list (Array.sub Sys.argv 1 (Array.length Sys.argv - 1)) in
  let worker = Domain.spawn (fun () -> List.fold_left (fun acc s -> acc + int_of_string s) 0 args) in
  let total = Domain.join worker in (* CONTROL! let total = try Some (Domain.join worker) with Failure _ -> None in *)
  Printf.printf "total %d\n" total (* CONTROL! match total with Some t -> Printf.printf "total %d\n" t | None -> print_endline "failed" *)
