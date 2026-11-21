;; LEVEL: LANGUAGE

(ns main)

(defn -main [& _]
  (let [counter (atom 0)
        work #(future (dotimes [_ 100000] (swap! counter inc)))
        a (work)
        b (work)]
    @a
    @b
    (println @counter)
    (shutdown-agents)))
