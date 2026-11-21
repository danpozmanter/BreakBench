(* LEVEL: STD *)

let () =
  let pid = Unix.create_process "sleep" [| "sleep"; "10" |] Unix.stdin Unix.stdout Unix.stderr in
  Unix.sleepf 0.1;
  Unix.kill pid Sys.sigkill;
  match Unix.waitpid [] pid with
  | _, Unix.WSIGNALED _ -> print_endline "killed"
  | _, (Unix.WEXITED _ | Unix.WSTOPPED _) -> print_endline "finished"
