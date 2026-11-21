type node = { mutable next : node option; payload : Bytes.t }
type obj = { opayload : Bytes.t; mutable callback : unit -> int }

let () =
  let n = int_of_string Sys.argv.(1) in
  let total = ref 0 in
  for _ = 1 to n do
    let a = { next = None; payload = Bytes.make 2048 'a' } in
    let b = { next = Some a; payload = Bytes.make 2048 'b' } in
    a.next <- Some b;
    let o = { opayload = Bytes.make 2048 'o'; callback = (fun () -> 0) } in
    o.callback <- (fun () -> Bytes.length o.opayload);
    total := !total + o.callback () + Bytes.length a.payload - Bytes.length b.payload
  done;
  print_endline (if !total < 0 then "unreachable" else "done")
