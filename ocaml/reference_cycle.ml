type node = { data : Bytes.t; mutable other : node option }

let make () = { data = Bytes.make 4096 '\001'; other = None }

let () =
  let n = int_of_string Sys.argv.(1) in
  for _ = 1 to n do
    let parent = make () in
    let child = make () in
    parent.other <- Some child;
    child.other <- Some parent
  done;
  print_endline "done"
