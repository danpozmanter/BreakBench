(ns main)

(defprotocol Shape
  (describe [s]))

(defrecord Circle []
  Shape
  (descibe [_] "circle") ; BREAK!
  (describe [_] "circle"))

(defn -main [& _]
  (println (describe (->Circle))))
