(ns main)

(defn -main [& _]
  (let [grid (vec (repeat 3 (vec (repeat 3 0))))
        grid (assoc-in grid [0 0] 1)]
    (println (count (filter #(= % 1) (flatten grid))))))
