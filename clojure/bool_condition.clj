(ns main)

(defn -main [& _]
  (println (if (compare "x" "x") "same" "different")))
