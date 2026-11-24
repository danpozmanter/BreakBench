(ns main)

(defn show [^double f] (println (long f))) ; CONTROL! (defn show [f] (println (long f)))

(defn -main [& args]
  (show (parse-long (first args))))
