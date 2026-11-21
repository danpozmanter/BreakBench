(ns main)

(defn -main [& _]
  (let [count (atom 0)
        add (fn [] (dotimes [_ 1000000] (swap! count inc)))
        a (future (add))
        b (future (add))]
    @a
    @b
    (println @count)
    (shutdown-agents)))
