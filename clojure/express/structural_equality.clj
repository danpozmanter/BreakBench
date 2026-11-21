;; LEVEL: LANGUAGE

(ns main)

(defrecord P [x y])

(defn -main [& _]
  (println (if (= (->P 1 2) (->P 1 2)) "equal" "different")))
