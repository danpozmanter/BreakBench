;; LEVEL: LANGUAGE

(ns main)

(defn pair [a b] (str a " " b))

(defn -main [& _]
  (let [n (atom 0)
        nxt #(swap! n inc)]
    (println (pair (nxt) (nxt)))))
