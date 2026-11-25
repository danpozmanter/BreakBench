let parse_order line =
  let parts = String.split_on_char ',' line in
  int_of_string (List.nth parts 2) (* BREAK! *)
  (* CONTROL! int_of_string (List.nth parts 1) *)

let () =
  match parse_order "widget,5" with
  | qty -> print_int qty; print_newline ()
  | exception _ -> print_endline "invalid order"
