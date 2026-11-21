;; LEVEL: LANGUAGE

(ns main)

(defn -main [& _]
  (let [i (inc 0)]
    (println (i++)) ; REJECT!
    (println i)))
