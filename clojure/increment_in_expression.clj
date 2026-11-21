(ns main)

(defn -main [& _]
  (let [i (inc 0)]
    (println (i++)) ; BREAK!
    (println i)))
