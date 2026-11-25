(ns main)

(defn -main [& args]
  (println (parse-long (first args)))) ; CONTROL! (println (or (parse-long (first args)) "invalid")))
