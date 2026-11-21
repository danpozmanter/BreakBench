(ns main)

(defn -main [& _]
  (let [xs (sort [5.0 ##NaN 3.0 1.0 ##NaN 4.0 2.0])
        finite (remove #(Double/isNaN %) xs)]
    (println (if (apply <= finite) "ordered" "unordered"))))
