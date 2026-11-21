(ns main)

(defn -main [& args]
  (println (if (re-matches #"^(a+)+$" (first args)) "match" "no match")))
