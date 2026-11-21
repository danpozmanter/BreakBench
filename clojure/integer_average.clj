(ns main)

(defn -main [& _]
  (let [sum 7
        cnt 2
        avg (double (/ sum cnt))]
    (println (format "%.1f" avg))))
