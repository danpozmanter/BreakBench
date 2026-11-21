(ns main)

(defn -main [& args]
  (let [frame {:buf (long-array [1 2 3 4]) :secret 42}]
    (println (aget ^longs (:buf frame) (parse-long (first args))))))
