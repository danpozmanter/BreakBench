(ns main)

(defn -main [& args]
  (let [readings [10 20 30]
        i (parse-long (first args))]
    (println (- (readings i) (readings (dec i))))))
