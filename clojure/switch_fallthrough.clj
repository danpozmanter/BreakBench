(ns main)

(defn -main [& args]
  (println (case (parse-long (first args))
             1 "one"
             2 "two"
             "other")))
