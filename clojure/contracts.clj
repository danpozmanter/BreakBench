(ns main)

(defn isqrt [x]
  {:pre [(>= x 0)]}
  (long (Math/sqrt x)))

(defn -main [& _]
  (println "before")
  (flush)
  (println (isqrt -1)))
