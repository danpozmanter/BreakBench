(* LEVEL: STD *)

let[@inline never] inner () = Printexc.raw_backtrace_to_string (Printexc.get_callstack 10)

let () =
  let trace = inner () in
  let named = try ignore (Str.search_forward (Str.regexp_string "inner") trace 0); true with Not_found -> false in
  print_endline (if named then "inner" else trace)
