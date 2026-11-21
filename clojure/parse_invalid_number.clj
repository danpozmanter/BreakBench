(ns main)

(defn -main [& args]
  (println (+ (parse-long (first args)) 1)))
