(ns main)

(defn -main [& args]
  (let [price (parse-long (first args))
        total (+ price 2)]
    (println price))) ; CONTROL! (println total)))
