;; LEVEL: LANGUAGE

(ns main)

(defn -main [& _]
  (let [stopped (promise)
        task (future (try
                       (loop [] (Thread/sleep 1) (recur))
                       (finally (deliver stopped true))))]
    (Thread/sleep 20)
    (future-cancel task)
    @stopped
    (println "stopped")
    (shutdown-agents)))
