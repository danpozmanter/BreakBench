(ns main)

(defrecord Point [x y])

(defn -main [& _]
  (println (:x (first (sort [(->Point 3 4) (->Point 1 2)]))))) ; CONTROL! (println (:x (first (sort-by :x [(->Point 3 4) (->Point 1 2)])))))
