(ns main)

(defn -main [& _]
  (let [a (parse-double "NaN")
        b (parse-double "NaN")
        s #{a}]
    (println (if (contains? s b) "found" "missing"))))
