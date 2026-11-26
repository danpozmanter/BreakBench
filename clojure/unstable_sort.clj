(ns main)

(defn -main [& _]
  (let [orders (map (fn [day] {:customer (mod (* day 7) 5) :day day}) (range 200))
        sorted (sort-by :customer orders)
        kept (every? (fn [[a b]] (or (not= (:customer a) (:customer b)) (< (:day a) (:day b))))
                     (partition 2 1 sorted))]
    (println (if kept "kept" "scrambled"))))
