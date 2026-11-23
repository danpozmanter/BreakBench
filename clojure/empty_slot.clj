(ns main)

(defn -main [& _]
  (let [users (-> (vec (repeat 3 nil))
                  (assoc 1 {:name "bob"})
                  (assoc 2 {:name "carol"}))]
    (println (count (:name (users 0))))))
