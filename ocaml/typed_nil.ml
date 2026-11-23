exception Validation_error of string

let validate name : exn option =
  let problem = if name = "" then Some (Validation_error "name") else None in
  problem

let () = print_endline (if Option.is_some (validate "ada") then "invalid" else "valid")
