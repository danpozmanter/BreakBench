;; LEVEL: LANGUAGE

(ns main)

(defn -main [& _]
  (println (get [10 20 30] 5 "none")))
