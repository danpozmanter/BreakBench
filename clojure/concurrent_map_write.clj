(ns main)

(defn -main [& _]
  (let [table (atom {})
        writers (doall (for [t (range 8)]
                         (future (dotimes [k 100000]
                                   (swap! table assoc (+ (* t 100000) k) k)))))]
    (run! deref writers)
    (println (count @table))
    (shutdown-agents)))
