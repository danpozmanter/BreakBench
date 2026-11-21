(* LEVEL: LANGUAGE *)

class shape =
  object
    method describe = "shape"
  end

class circle =
  object
    inherit shape
    method! describe = "circle"
    method! descibe = "circle" (* REJECT! *)
  end

let () =
  let s = (new circle :> shape) in
  print_endline s#describe
