let grade score =
  if score > 50 then "pass"
  else if score < 50 then "fail"
  (* CONTROL! else "borderline" *)

let () = print_endline (grade (int_of_string Sys.argv.(1)))
