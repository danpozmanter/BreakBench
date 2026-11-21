(ns main)

(defn -main [& args]
  (let [i (parse-long (first args))
        xs [1 2 3]]
    (println (if (< i (count xs)) "less" "not less"))))
