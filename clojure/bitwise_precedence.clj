(ns main)

(defn -main [& args]
  (let [x (parse-long (first args))]
    (println (if (zero? (bit-and x 1)) "even" "odd"))))
