type record = { data : Bytes.t }

let () =
  let n = int_of_string Sys.argv.(1) in
  let seen = ref 0 in
  for _ = 1 to n do
    let r = { data = Bytes.make 4096 '\001' } in
    seen := !seen + Char.code (Bytes.get r.data 0)
  done;
  print_endline (if !seen = n then "done" else "lost")
