(ns main)

(defn -main [& _]
  (let [weights [3 3 3 3]
        before weights
        weights (assoc weights 1 5 3 0)]
    (println (count (filter true? (map not= before weights))))))
