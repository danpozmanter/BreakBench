;; LEVEL: LANGUAGE

(ns main)

(defn -main [& _]
  (loop [i 0 last nil]
    (if (< i 4000000)
      (recur (inc i) {:id i :data (byte-array 1016)})
      (println (:id last)))))
