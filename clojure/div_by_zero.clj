(ns main)

(defn -main [& args]
  (println (quot 100 (parse-long (first args)))))
