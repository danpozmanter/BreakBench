;; LEVEL: LANGUAGE

(ns main)

(defn -main [& _]
  (println (if (== (+ 0.1M 0.2M) 0.3M) "equal" "not equal")))
