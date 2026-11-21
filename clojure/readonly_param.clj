(ns main)

(defn count-items [xs]
  (sort xs)
  (count xs))

(defn -main [& _]
  (let [items [3 1 2]]
    (count-items items)
    (println (first items))))
