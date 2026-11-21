(ns main)

(defn -main [& args]
  (let [n (parse-long (first args))
        x] ; BREAK!
        ; CONTROL! x (if (> n 5) 10 0)]
    (println n x)))
