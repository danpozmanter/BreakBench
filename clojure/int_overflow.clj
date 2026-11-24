(ns main)

(defn -main [& args]
  (println (+ (parse-long (first args)) 1))) ; CONTROL! (println (str (+' (parse-long (first args)) 1))))
