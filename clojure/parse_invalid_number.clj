(ns main)

(defn -main [& args]
  (println (+ (parse-long (first args)) 1))) ; CONTROL! (let [n (parse-long (first args))] (println (if n (+ n 1) "invalid"))))
