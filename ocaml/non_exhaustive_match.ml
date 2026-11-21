type color = Red | Green | Blue

let name c =
  match c with
  | Red -> "red"
  | Green -> "green"
  (* CONTROL! | Blue -> "blue" *)

let () =
  let colors = [| Red; Green; Blue |] in
  print_endline (name colors.(int_of_string Sys.argv.(1)))
