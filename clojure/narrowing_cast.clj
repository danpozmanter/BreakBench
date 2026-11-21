(ns main)

(defn -main [& args]
  (println (byte (parse-long (first args)))))
