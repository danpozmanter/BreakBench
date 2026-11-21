(* LEVEL: STD *)

let () =
  let pid = Unix.create_process "false" [| "false" |] Unix.stdin Unix.stdout Unix.stderr in
  match Unix.waitpid [] pid with
  | _, Unix.WEXITED code -> print_int code; print_newline ()
  | _, (Unix.WSIGNALED _ | Unix.WSTOPPED _) -> print_endline "signaled"
