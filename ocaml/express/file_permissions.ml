(* LEVEL: STD *)

let () =
  let path = "/tmp/bb_perm.txt" in
  (try Sys.remove path with Sys_error _ -> ());
  Unix.close (Unix.openfile path [ Unix.O_CREAT; Unix.O_EXCL; Unix.O_WRONLY ] 0o600);
  Printf.printf "%o\n" (Unix.stat path).Unix.st_perm;
  Sys.remove path
