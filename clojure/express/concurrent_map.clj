;; LEVEL: STD

(ns main)

(defn -main [& _]
  (let [m (java.util.concurrent.ConcurrentHashMap.)
        writers (doall (for [t (range 4)]
                         (future (dotimes [k 1000] (.put m (+ (* t 1000) k) k)))))]
    (run! deref writers)
    (println (.size m))
    (shutdown-agents)))
