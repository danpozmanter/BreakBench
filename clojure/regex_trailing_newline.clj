(ns main)

(defn -main [& args]
  (println (if (re-matches #"^[a-z]+$" (first args)) "accepted" "rejected")))
