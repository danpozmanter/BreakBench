(* LEVEL: LANGUAGE *)

type meters = Meters of float [@@unboxed]
type seconds = Seconds of float [@@unboxed]

let add_m (Meters a) (Meters b) = Meters (a +. b)

let () =
  ignore (Seconds 0.0);
  let (Meters total) = add_m (Meters 2.0) (Meters 3.0) in
  let wrong = add_m (Meters 2.0) (Seconds 3.0) in (* REJECT! *)
  Printf.printf "%g\n" total
