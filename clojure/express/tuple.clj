;; LEVEL: LANGUAGE

(ns main)

(defn pair [] [1 "a"])

(defn -main [& _]
  (let [[n s] (pair)]
    (println n s)))
