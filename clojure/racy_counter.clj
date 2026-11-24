(ns main)

(defn -main [& _]
  (let [counter (atom 0)
        workers (doall (for [_ (range 8)]
                         (future (dotimes [_ 1000000] (swap! counter inc)))))]
    (run! deref workers)
    (println @counter)
    (shutdown-agents)))
