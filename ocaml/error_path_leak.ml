exception Invalid_request

let process_request request id =
  let buf = Bytes.make 4096 ' ' in
  let text = Printf.sprintf "%s#%d" request id in
  Bytes.blit_string text 0 buf 0 (String.length text);
  if Bytes.get buf 0 <> '{' then raise Invalid_request

let () =
  let n = int_of_string Sys.argv.(1) in
  let failures = ref 0 in
  for i = 0 to n - 1 do
    try process_request "not json" i with Invalid_request -> incr failures
  done;
  print_endline (if !failures = n then "done" else "unexpected")
