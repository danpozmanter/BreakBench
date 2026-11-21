;; LEVEL: LANGUAGE

(ns main)

(defn -main [& _]
  (let [task (future (Thread/sleep 50) 7)]
    (println "started")
    (println @task)
    (shutdown-agents)))
