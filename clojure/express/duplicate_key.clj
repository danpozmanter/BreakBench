;; LEVEL: LANGUAGE

(ns main)

(defn -main [& _]
  (println (count {"a" 1 "a" 2})) ; REJECT!
  (println (count {"a" 1 "b" 2})))
