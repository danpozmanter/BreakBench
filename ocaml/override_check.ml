class shape =
  object
    method describe = "shape"
  end

class circle =
  object
    inherit shape
    method! describe = "circle"
    method! descibe = "circle" (* BREAK! *)
  end

let () =
  let s = (new circle :> shape) in
  print_endline s#describe
