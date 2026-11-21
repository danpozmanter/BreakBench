(ns main)

(defn show [n] (println n))

(defn -main [& args]
  (show (parse-long (first args))))
