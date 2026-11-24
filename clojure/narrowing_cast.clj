(ns main)

(defn -main [& args]
  (println (byte (parse-long (first args))))) ; CONTROL! (let [v (parse-long (first args))] (println (if (<= 0 v 255) v "out of range"))))
